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
    flash[:success] = "A cosmic horror has been summoned from the void..."
    redirect_to "/great_old_ones/#{ great_old_one.id }"
  end

  def show
    @great_old_one = GreatOldOne.find(params[:id])
  end

  def edit
    @great_old_one = GreatOldOne.find(params[:id])
  end

  def update
    goo = GreatOldOne.find(params[:id])

    goo.assign_attributes(
                          name: params[:name],
                          price: params[:price],
                          image: params[:image],
                          description: params[:description]
                          )

    goo.save
    flash[:success] = "Rituals unknown seem to have altered our perception and understanding of this cosmic horror."
    redirect_to "/great_old_ones/#{ goo.id }"
  end

  def destroy
    goo = GreatOldOne.find(params[:id])
    goo.destroy
    flash[:danger] = "You have successfully banished something outside of time and nature... but how?"
    redirect_to "/great_old_ones"
  end


end
