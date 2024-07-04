class MainController < ApplicationController
  def hello
    render json: { message: 'Welcome to the API The Loki Project API v1.0.0!' }
  end

  def test

    # render json: params
    if (params[:file] == nil)
      render json: {message:"Please Provide a file"}
      return
    end
    validationResult = fileValidate(params[:file])
    if (validationResult != true)
      render json: validationResult
      return
    end
    # puts "File: #{params[:file]}"
    # render json: params[:file]
    render json: SUPABASE_CLIENT.uploadImage(params[:file],randomFileNameGenerator(params[:file]))
  end

  private
  def fileValidate(file)
    mime_type_regex = /\Aimage\/(jpg|jpeg|png|gif|bmp|tiff)\z/i
    if file == nil
      return {message:"Please Provide a file"}
    end
    if file.size > 1024*1024*10
      return {message:"File size is too large, must be less than 10MB"}
    end
    if !file.content_type.match(mime_type_regex)
      return {message:"File must be an image"}
    end
    return true
  end
  def randomFileNameGenerator(file)
    fileExt = file.content_type.split("/")[1]
    return "#{SecureRandom.uuid}.#{fileExt}"
  end
end
