class CashRegister
  attr_accessor :discount, :total, :price

  def initialize(discount = 0)#optionally takes an employee discount on initialization
    @total = 0       #sets an instance variable @total on initialization to zero
    @discount = discount
    @order = []
  end


  def add_item(item, price, quantity=1)
    item_information = {}
    item_information[:name]=item
    item_information[:price]=price
    item_information[:quantity]=quantity
    @price = price #additional attribute accessor for .void_last_transaction
    @order << item_information #accepts a title and a price and increases the total
    @total += price * quantity  #also accepts an optional quantity
  end

  def apply_discount
    if @discount == 0 #reduces the total
      return "There is no discount to apply." #returns a string error message that there is no discount to apply
    end
    @total -= @total * @discount/100
      return "After the discount, the total comes to $#{@total}." #returns success message with updated total
  end

  def items
    item_names = []
    @order.each do |item_information|
      for qty in 1..item_information[:quantity]
        item_names << item_information[:name] #returns an array containing all items that have been added
      end
    end
  item_names #returns an array containing all items that have been added
  end


  def void_last_transaction
    @total = @total - @price
    @total
  end
end
