class GreatOldOnesController < ApplicationController
  
  def index
    @goo = GreatOldOne.all
  end

  def new

  end

  def create
    great_old_one = GreatOldOne.new(
                                    name: params[:name],
                                    description: params[:description],
                                    price: params[:price],
                                    image: params[:image]
                                    )

    great_old_one.save
  end

  def show
    @great_old_one = GreatOldOne.find(params[:id])
  end


end
