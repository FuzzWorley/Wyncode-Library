class CheckoutsController < ApplicationController
	# before_action :set_checkout, only: [:show, :edit, :update, :destroy]

  def create
  	@checkout = current_user.checkouts.create(checkout_params)

  	redirect_to root_path
  end 

  def index
  	@checkouts = Checkout.all
  end

  private
    # def set_checkout
    #   @checkout = Checkout.find(params[:id])
    # end

  def checkout_params
  	params.require(:checkout).permit(:book_id, :user_id)
  end
end
