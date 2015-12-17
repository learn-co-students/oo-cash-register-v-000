class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @discount = discount
    @last_transaction = last_transaction
    @items = []
    @total = 0
  end

  def add_item(item, price, quantity = 1)
    @item = item 
    @price = price 
    @quantity = quantity
    # add items to our items array so that we can call the items
    if quantity == 1
      @items << item 
    else 
      quantity.times do 
        @items << item
      end
    end
    # adjust the total based on the item rang it, taking in account for the quantity for each item
    @total += price * quantity
  end

  def apply_discount
    # check to see if a discount exist
    if discount == 0
      "There is no discount to apply."
    else
      # this will make the discount a percentage amount that it can subtract from the @total
      @total -= @total * @discount/100.to_f
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}." 
    end
  end

  def void_last_transaction
    # Make the @last_transaction = @total, so that we can void the existing ammount.
    @last_transaction = @total
    @total -= last_transaction
  end

end