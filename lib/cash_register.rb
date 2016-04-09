class CashRegister
  attr_accessor :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @price_of_last_product = 0
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    @price_of_last_product = price

    counter = quantity
    while counter > 0
      self.items << title
      counter -= 1 
    end
  end

  def apply_discount
    @total -= @total * self.discount/100
    if self.discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end 
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price_of_last_product
  end
end
