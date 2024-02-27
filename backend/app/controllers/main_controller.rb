class MainController < ApplicationController
  def hello
    render json: { message: 'Welcome to the API The Loki Project API v1.0.0!' }
  end
end
