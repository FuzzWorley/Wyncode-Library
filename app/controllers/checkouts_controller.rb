class CheckoutsController < ApplicationController
	# before_action :set_checkout, only: [:show, :edit, :update, :destroy]

  def create
    #current_user allows us to grab the user_id and the book_id
  	@checkout = current_user.checkouts.create(checkout_params)

    #Check to see if checkout is nil? *method returning true or false
      #if book_checked_out? 
        #then in VIEW

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
