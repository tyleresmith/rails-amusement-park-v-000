class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    @happiness = self.happiness
    @nausea = self.nausea

    if @nausea > @happiness
      "sad"
    else
      "happy"
    end
  end
end
