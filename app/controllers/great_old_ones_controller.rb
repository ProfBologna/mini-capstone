class GreatOldOnesController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]  

  def index
    # @cart_count = current_user.current_cart.count

    @goo = GreatOldOne.all


    sort_attribute = params[:sort]
    desc_attribute = params[:desc]
    discount_items = params[:discount]
    random_item = params[:random]
    category_attribute = params[:category]

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

    if category_attribute
      category = Category.find_by(name: category_attribute)
      @goo = category.great_old_ones
    end


  end

  def new
    @supplier = Supplier.all
    @great_old_one = GreatOldOne.new
  end

  def create
    @great_old_one = GreatOldOne.new(
                                    name: params[:name],
                                    description: params[:description],
                                    price: params[:price],
                                    supplier: params[:supplier]
                                    )

    if @great_old_one.save
    flash[:success] = "A cosmic horror has been summoned from the void..."
    redirect_to "/great_old_ones/#{ @great_old_one.id }"
    else
      @suppliers = Supplier.all
      @errors = @great_old_one.errors.full_messages
      render "new.html.erb"
      flash[:dangerous] = "Oops! Looks like you made a mistake."
     end
  end

  def show
    @great_old_one = GreatOldOne.find(params[:id])
  end

  def edit
    @great_old_one = GreatOldOne.find(params[:id])
  end

  def update
    @great_old_one = GreatOldOne.find(params[:id])

    @great_old_one.assign_attributes(
                          name: params[:name],
                          price: params[:price],
                          description: params[:description]
                          )

    if @great_old_one.save
    flash[:success] = "Rituals unknown seem to have altered our perception and understanding of this cosmic horror."
    redirect_to "/great_old_ones/#{ goo.id }"
    else
      @suppliers = Supplier.all
      @errors = @great_old_one.errors.full_messages
      render "edit.html.erb"
      flash[:dangerous] = "Oops! Looks like you made a mistake."
    end

  end

  def destroy
    goo = GreatOldOne.find(params[:id])
    goo.destroy
    flash[:danger] = "You have successfully banished something outside of time and nature... but how?"
    redirect_to "/great_old_ones"
  end




end
