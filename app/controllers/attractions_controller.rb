class AttractionsController < ApplicationController
  before_action :require_admin, only: [:new, :create]
  before_action :current_user

  def index
    @attractions = Attraction.all


  end

  def show
    @attraction = Attraction.find(params[:id])

  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)

    if @attraction.save
      redirect_to @attraction
    else
      render :new
    end
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
    @attraction.update(attraction_params)
    redirect_to @attraction
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :happiness_rating, :nausea_rating, :min_height, :tickets)
  end

end
