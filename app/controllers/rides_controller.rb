class RidesController < ApplicationController

  def create
    @user = current_user
    @attraction = Attraction.find(params[:id])

    @ride = Ride.new(user_id: @user.id, attraction_id: @attraction.id)

    flash[:message] = @ride.take_ride
    @ride.save
    redirect_to @user
  end
end
