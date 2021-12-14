class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:user_id])
    items = user.items
    render json: user, include: :items
  end

end
