class ManualsController < ApplicationController
  
  def index
  end
  
  private
  def manual_params
    params.require(:manual).permit(:title, :image, :explanation, :genre_id).merge(user_id: current_user.id)
  end
end
