require 'pry'
#ok look, this code works and the solution is pretty good. However the code can be more elegant. for example I never use self here.
class CashRegister
  attr_accessor :total, :discount, :items, :order_list

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @order_list = []
  end

  def add_item(title, price, quantity = 1)
    @order_list << { "item_name" => title, "item_price" => price, "quantity_ordered" => quantity }
    quantity.times { @items << title }
    self.total += (price * quantity)
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      self.total = (total * (1 - discount/100.0)).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total = total - (@order_list.last["item_price"])

  end
end
