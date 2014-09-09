class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  def total_price
    product.price * quantity
  end

# def totalprice
    	  
#     	   @totalprice = 0
#     	    line_items = LineItem.all 

#     	  line_items.each do |m|
#     	 @totalprice += m.product.price * m.quantity

    	
#            end

#            @totalprice
#      end

end
