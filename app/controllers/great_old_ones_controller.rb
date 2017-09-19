class GreatOldOnesController < ApplicationController
  

  def index
    @goo = GreatOldOne.all

    sort_attribute = params[:sort]
    desc_attribute = params[:desc]
    discount_items = params[:discount]
    random_item = params[:random]

    if desc_attribute && desc_attribute == "true"
      @goo = @goo.order(sort_attribute => :desc)
    elsif sort_attribute
      @goo = @goo.order(sort_attribute)
    end

    if discount_items
     @goo = @goo.where("price < ?", 600)
    end

    if random_item
      random_id = @goo.sample.id
      # @goo = GreatOldOne.find(random_id)
      redirect_to "/great_old_ones/#{random_id}"
    end

  end

  def new
    @supplier = Supplier.all
  end

  def create
    great_old_one = GreatOldOne.new(
                                    name: params[:name],
                                    description: params[:description],
                                    price: params[:price],
                                    image: params[:image],
                                    supplier: params[:supplier]
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
