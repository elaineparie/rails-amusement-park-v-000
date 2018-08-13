class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user

  def take_ride
    @user = User.find_by(id: user_id)
    @ride = Ride.find_by(id: self.id)
    if user[:tickets] < @ride[:tickets]
      puts "Sorry. You do not have enough tickets to ride the Roller Coaster."
    end
  end
end
