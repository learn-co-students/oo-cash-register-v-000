require 'pry'

class CashRegister
  attr_accessor :total, :discount, :item, :price, :last_transaction

  def initialize(discount = 0) #don't use nil instead of 0
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)#if this is defaulted to 0,
                                          #you wouldn't have anything in the cart
                                          #wont accept new item
    self.total += price * quantity
    quantity.times do
      self.items << title
    end
    @last_transaction = total
  end

  def apply_discount
    if self.discount != 0
      self.total = self.total - ((self.discount * self.total) / 100)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - last_transaction
  end

end


