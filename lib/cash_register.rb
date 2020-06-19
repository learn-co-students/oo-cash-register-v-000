class CashRegister

  attr_accessor :total, :discount, :items, :price

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @price = 0
  end

  def add_item(title, price, quantity = 1)
    #binding.pry
    @price = price
    self.total += (price * quantity)
    while(quantity > 0)
      @items << title
      quantity -= 1
    end
  end

  def apply_discount
    if(self.discount != 0)
      const = 0.0100
      discount_dec = self.discount * const
      discount = self.total * discount_dec
      self.total -= discount
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.price
  end



end
