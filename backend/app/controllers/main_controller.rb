class MainController < ApplicationController
  before_action :authenticate_user!
  def hello
    render json: { message: 'Hello World',user:current_user }
  end
end
