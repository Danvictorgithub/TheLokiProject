class PathsController < ApplicationController
  before_action :set_path, only: %i[ show update destroy ]
  before_action :authenticate_user!, only: %i[ create update destroy ]
  before_action :isSelf, only: %i[ update destroy ]

  # GET /paths
  def index
    @paths = Path.all

    render json: @paths
  end

  # GET /paths/1
  def show
    render json: @path
  end

  # POST /paths
  def create
    @path = Path.new(path_params_create)

    if @path.save
      render json: @path, status: :created, location: @path
    else
      render json: @path.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paths/1
  def update
    if @path.update(path_params)
      render json: @path
    else
      render json: @path.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paths/1
  def destroy
    @path.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_path
      @path = Path.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def path_params_create
      params.require(:path).permit(:name).merge(user_id: current_user.id)
    end
    def path_params
      params.require(:path).permit(:name, :user_id)
    end

    def isSelf
      if  @path.user_id == current_user.id
        return true
      else
        render json: {error: "You are not authorized to perform this action"}, status: :unauthorized
      end
    end
end
