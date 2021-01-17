class BrewsController < ApplicationController
  def show
    @brew = Brew.find(params[:id])
  end
  def new
    @brew = current_user.brews.build
  end
end
