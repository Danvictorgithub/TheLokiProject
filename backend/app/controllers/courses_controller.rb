class CoursesController < ApplicationController
  before_action :set_course, only: %i[ show update destroy ]
  before_action :authenticate_user!, only: %i[ create update destroy ]
  before_action :isSelf, only: %i[ update destroy ]

  # GET /courses
  def index
    @courses = Course.all

    render json: @courses
  end

  # GET /courses/1
  def show
    render json: @course
  end

  # POST /courses
  def create
    @course = Course.new(course_params_create)

    if @course.save
      render json: @course, status: :created, location: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /courses/1
  def update
    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /courses/1
  def destroy
    render json: @course.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:name, :description, :user_id)
    end

    def course_params_create
      params.require(:course).permit(:name,:description).merge(user_id: current_user.id)
    end

    def isSelf
      if @course.user_id == current_user.id
        return true
      else
        render:json => {error: "You are not authorized to perform this action"}, status: :unauthorized
      end
    end
end
