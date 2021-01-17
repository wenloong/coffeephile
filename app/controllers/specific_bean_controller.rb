class SpecificBeanController < ApplicationController
    def index
      @specific_bean = CoffeeBean.find(params[:id])
    end
  end
  