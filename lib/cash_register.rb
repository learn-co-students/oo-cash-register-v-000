
class CashRegister

  attr_accessor :total, :discount, :title, :price, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount= discount

    @items = []
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @total += price * quantity
    @quantity.times do
      @items << title
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount != 0
      @total -= (@total * discount/100).to_i

      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

def void_last_transaction
  self.total = self.total - self.last_transaction
end
end
