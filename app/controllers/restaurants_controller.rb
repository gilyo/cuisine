class RestaurantsController < ApplicationController
  before_filter :init_params, except: [:index, :new, :create]

  def index
    # TODO handle filter
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def update
    # TODO placeholder
  end

  def edit
    # TODO placeholder
  end

  def create
    # TODO placeholder
  end

  def delete
    # TODO placeholder
  end

  private

  def init_params
    @restaurant = Restaurant.find(params[:id])
  end
end
