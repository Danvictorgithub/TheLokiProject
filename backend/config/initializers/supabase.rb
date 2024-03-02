class SupabaseClient
  def initialize(supabase_key, supabase_url)
    @supabase_key = supabase_key
    @supabase_url = supabase_url
  end

  def uploadImage(file,fileName)
    # code to upload image to supabase
    response = HTTParty.post("#{@supabase_url}/storage/v1/object/store/#{fileName}",headers:{
      "Authorization":"#{@supabase_key}"
    },body:{
      file:file
    })
    if response.code == 200
      return {public_link:"#{@supabase_url}/storage/v1/public/#{response.parsed_response["Key"]}"}
    else
      return response.parsed_response
    end
  end
  def getInitialData()
    data = {supabase_key: @supabase_key, supabase_url: @supabase_url}
  end
end

SUPABASE_CLIENT = SupabaseClient.new(
  Rails.application.credentials.supabase_key,
  Rails.application.credentials.supabase_url
)
