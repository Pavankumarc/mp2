class HistoryController < ApplicationController
	before_action :authenticate_user!
    include CurrentCart
    before_action :set_cart, only: [:create]
	 def index
     
	 	 @history = LineItem.where(user_id: current_user.id)
	 
	  end
end
