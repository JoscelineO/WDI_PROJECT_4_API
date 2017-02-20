class MoodboardsController < ApplicationController
  before_action :set_moodboard, only: [:show, :update, :destroy]

  # GET /moodboards
  def index
    @moodboards = Moodboard.all

    render json: @moodboards
  end

  # GET /moodboards/1
  def show
    render json: @moodboard
  end

  # POST /moodboards
  def create
    @moodboard = Moodboard.new(moodboard_params)

    if @moodboard.save
      render json: @moodboard, status: :created, location: @moodboard
    else
      render json: @moodboard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /moodboards/1
  def update
    if @moodboard.update(moodboard_params)
      render json: @moodboard
    else
      render json: @moodboard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /moodboards/1
  def destroy
    @moodboard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moodboard
      @moodboard = Moodboard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def moodboard_params
      params.require(:moodboard).permit(:project_name, :brief, :user_id)
    end
end
