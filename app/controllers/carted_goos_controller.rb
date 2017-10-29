class CartedGoosController < ApplicationController

  before_action :authenticate_user!, only: [:create, :index, :destroy]

  def index
      if current_user && current_user.current_cart.any?
        @carted_goos = current_user.current_cart
      else
        flash[:warning] = "Your cart is empty. You should consider changing that."
        redirect_to "/"
      end
  end


  def create

    goo = GreatOldOne.find(params[:great_old_one_id])

    cart = CartedGoo.new(
                      user_id: current_user.id,
                      great_old_one_id: params[:great_old_one_id],
                      quantity: params[:quantity],
                      order_id: params[:oder_id], 
                      status: "carted"
                      )


  # cart.calculate_totals

  cart.save

  redirect_to "/cart"
  flash[:success] = "You have successfully updated your cart."
  end

  def destroy
    carted_goos = CartedGoo.find(params[:id])
    carted_goos.update(status: "removed")
    carted_goos.destroy
    flash[:succes] = "Goo Removed"
    redirect_to "/cart"
  end

end
