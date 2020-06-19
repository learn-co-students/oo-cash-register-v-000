class CashRegister
  attr_accessor :items, :total, :discount, :price, :quantity
  

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def total
    @total
  end

  def items
    @items
  end

  def add_item(title, price, quantity = 1)
   counter = 0
   og_item = title
   @price = price * quantity
   @total += @price
   while counter < quantity
   @items<<og_item
   counter += 1
  end
  end

    def apply_discount
      returnvalue = nil
     discount = @total * (@discount / 100.0)
     @total -= discount.to_i
     returnvalue = "After the discount, the total comes to $#{@total}."
     if @discount < 1
      returnvalue = "There is no discount to apply."
    end
    returnvalue
  end

def void_last_transaction
@total = @total - @price
end

end
