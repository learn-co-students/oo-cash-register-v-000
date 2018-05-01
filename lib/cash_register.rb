
class CashRegister
  attr_accessor :total, :discount, :items, :itemized_list 
  
  def initialize(discount = 0)
    @discount = discount 
    @total = 0 
    @items = []
    # will be a list of lists. 
    # itemized_list was created to keep track of purchases in a manner similar
    # to a receipt and to make void_last_transaction work more 
    # appropriately for real-world applications
    @itemized_list = []
  end
  
  def add_item(item, cost, quantity = 1)
    quantity.times do 
      @items << item
    end
    @itemized_list << [item, cost, quantity]
    @total += cost * quantity
  end
  
  def apply_discount
    if @discount > 0
      discounted_price = @total - (@total * (@discount.to_f / 100))
      @total = discounted_price.to_i 
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."  
    end
  end
  
  def void_last_transaction
    #remove last_transaction from @itemized_list
    last_transaction = @itemized_list.pop
    #assign cost and quantity
    cost = last_transaction[1]
    quantity = last_transaction[2]
    #remove purchased items from @items
    quantity.times do 
      @items.pop 
    end
    @total = @total - (cost * quantity)
  end
  
  
end
