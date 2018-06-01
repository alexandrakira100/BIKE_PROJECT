class OwnerBikesController < ApplicationController
def index
    @my_bikes = current_user.bikes
  end
end
