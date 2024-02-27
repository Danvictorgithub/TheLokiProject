class PathSectionsController < ApplicationController
  before_action :set_path_section, only: %i[ show update destroy ]

  # GET /path_sections
  def index
    @path_sections = PathSection.all

    render json: @path_sections
  end

  # GET /path_sections/1
  def show
    render json: @path_section
  end

  # POST /path_sections
  def create
    @path_section = PathSection.new(path_section_params)

    if @path_section.save
      render json: @path_section, status: :created, location: @path_section
    else
      render json: @path_section.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /path_sections/1
  def update
    if @path_section.update(path_section_params)
      render json: @path_section
    else
      render json: @path_section.errors, status: :unprocessable_entity
    end
  end

  # DELETE /path_sections/1
  def destroy
    @path_section.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_path_section
      @path_section = PathSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def path_section_params
      params.require(:path_section).permit(:name, :path_id)
    end
end
