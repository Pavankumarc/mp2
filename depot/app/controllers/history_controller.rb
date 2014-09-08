class HistoryController < ApplicationController
	
	before_action :authenticate_user!
    include CurrentCart
    before_action :set_cart, only: [:create]
	 
    def index
    	@history =  current_user.line_items.where.not(:order_id =>"NULL").order('created_at DESC')
	end

end
