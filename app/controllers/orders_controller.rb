class OrdersController < ApplicationController

  def create
    carted_goos = current_user.current_cart
    order = Order.new(user_id: current_user.id)
    carted_goo.update_all(status: "ordered", order_id: order.id)
    order.calculate_totals
    redirect_to "/orders/#{ order.id }"
  end

  def show
    @order = Order.find(params[:id])
    redirect_to "/" unless current_user && current_user.id == @order.user_id
  end

end

