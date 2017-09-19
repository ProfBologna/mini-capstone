class OrdersController < ApplicationController

  def new
    
  end



  def create

    goo = GreatOldOne.find(params[:great_old_one_id])

    order = Order.new(
                      user_id: current_user.id,
                      great_old_one_id: params[:great_old_one_id],
                      quantity: params[:quantity],
                      total: total,
                      tax: tax,
                      subtotal: subtotal
                      )

  order.calculate_totals

  order.save

  redirect_to "/orders/#{ order.id }"
  flash[:success] = "You have successfully placed your order."
  end

  def show
    @order = Order.find(params[:id])
  end

end
