class BrewsController < ApplicationController
  def show
    @brew = Brew.find(params[:id])
  end
  def new
    user = User.find(params[:user_id])
    @brew = user.brews.new
  end

  def create
    user = User.find(params[:user_id])
    brew = Brew.create(
      brew_method: params[:brew_method],
      c_weight: params[:c_weight],
      w_weight: params[:w_weight],
      cream_weight: params[:cream_weight],
      s_weight: params[:s_weight],
      extra_details: params[:extra_details],
      user: user
    )
    redirect_to "/users/#{user.id}"
  end
end
