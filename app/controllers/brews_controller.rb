class BrewsController < ApplicationController
  def show
    @brew = Brew.find(params[:id])
  end
end
