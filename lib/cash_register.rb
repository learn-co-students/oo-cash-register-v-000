class  CashRegister 
  
attr_accessor :total, :discount, :last_trans, :items  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @items = []
  end 
  
  def add_item(title, price, quantity=0)
	    if quantity != 0
	      self.total += price * quantity
	      quantity.times {items << title}
	    else
	      self.total += price
	      self.items << title
	    end
	    @last_trans = price
	end
 
 
 def apply_discount
		if discount != 0
		self.total = (total * ((100.0 - discount.to_f)/100)).to_i
			"After the discount, the total comes to $#{self.total}."
		else
      		"There is no discount to apply."
    	end
	end
    
    def items
		@items
	end
 
   def void_last_transaction
		self.total = total - @last_trans
	end

end 