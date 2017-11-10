require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items

  def initialize(cash_register_with_discount=0)
    self.items = []
    @discount = cash_register_with_discount
    @total = 0
  end

  def add_item(title, price, quantity=1)
    self.total = total + (price * quantity)
    quantity.times do
      @items << title
    end
    #This is where the transaction happens...
    @transaction = {title: title, price: price, quantity: quantity}
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      discounted = (discount * total)/100
      self.total = total - discounted
      "After the discount, the total comes to $#{total}."
    end
  end

  def void_last_transaction
    self.total = total - (@transaction[:price] * @transaction[:quantity])
    @transaction[:quantity].times do
      @items.pop
    end
  end

end
