class CashRegister

  attr_accessor :items, :total, :discount, :last_transaction

  def initialize(discount = "")
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    total_price = price * quantity
    self.last_transaction = total_price
    self.total += total_price
      if quantity > 1
        x = 0
        while x < quantity
          @items << title
          x += 1
        end
      else
        @items << title
      end
  end

  def apply_discount
    if discount.to_i > 0
      self.total -= (total * discount / 100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
