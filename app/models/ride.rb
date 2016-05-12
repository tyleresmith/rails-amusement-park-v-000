class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :user
  belongs_to :attraction

  def tall_enough?
    @user = self.user
    @attraction = self.attraction
    @user.height >= @attraction.min_height
  end

  def enough_tickets?
    @user = self.user
    @attraction = self.attraction
    @user.tickets >= @attraction.tickets
  end

  def take_ride
    if !tall_enough? && !enough_tickets?
      "Sorry. You do not have enough tickets the #{@attraction.name}. You are not tall enough to ride the #{@attraction.name}."
    elsif !enough_tickets?
      "Sorry. You do not have enough tickets the #{@attraction.name}."
    elsif !tall_enough?
      "Sorry. You are not tall enough to ride the #{@attraction.name}."
    else
      @user.tickets = @user.tickets - @attraction.tickets
      @user.nausea = @user.nausea + @attraction.nausea_rating
      @user.happiness = @user.happiness + @attraction.happiness_rating
      @user.save
    end
  end
end
