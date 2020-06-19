class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @@items = []
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total += (price * quantity)
    counter = quantity
  
    while counter > 0
      self.items << title
      counter-=1
    end
  end

  def apply_discount
    @total = (@total - (@total * @discount.to_i / 100))
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    @total = (@total - @price)
  end

end
