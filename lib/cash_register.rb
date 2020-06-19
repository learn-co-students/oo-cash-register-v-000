require 'pry'
class CashRegister
  attr_accessor :total, :discount, :price, :quantity, :title, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end #def initialize

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    self.total = total + (price * quantity)
      quantity.times do |x|
        @items << title
      end #quantity.times
    @last_transaction = price * quantity
  end #def add_item

  def apply_discount
    if discount != 0
      self.total = total * ((100 - discount.to_f)/100)
      "After the discount, the total comes to $#{total.to_int}."
    else
      "There is no discount to apply."
    end
  end #def apply_discount

  def void_last_transaction
    self.total = total - last_transaction
  end #def void_last_transaction

end #class CashRegister
