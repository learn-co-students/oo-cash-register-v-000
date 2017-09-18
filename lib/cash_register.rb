require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price*quantity
    quantity.times { @items << item }
    self.last_transaction = price*quantity
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
    self.total = self.total -  self.total*self.discount/100
    "After the discount, the total comes to $#{self.total}."
    end
  end

  # def items => this is not necessary, already set with
  #   @items  => attr_accessor :items
  # end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
