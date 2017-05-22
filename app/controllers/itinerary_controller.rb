class ItineraryController < ApplicationController
  def index
    @user = User.find_by_id(current_user.id)
    if Itinerary.where(:user_id => current_user.id).exists?
      @route = Itinerary.where(:user_id => current_user.id).last(1)
      @path = @route.first.id
      redirect_to "/itinerary/#{@route.first.id}"

    else
      create_blank()
    end
  end

  def show
  end

  def create_blank
    @itinerary = Itinerary.create(:user_id => current_user.id)
    id = @itinerary.id
    redirect_to  "/itinerary/#{id}"
  end

  def create
  end
end
