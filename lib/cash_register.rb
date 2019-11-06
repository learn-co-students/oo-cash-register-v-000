require'pry'
class CashRegister

  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    #binding.pry
    self.total += price * quantity
    quantity.times {self.items << title}
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount)/100).to_f).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction # (quantity=1) if we wanted to test if we got rid of the last item from the @items array
    #binding.pry
    self.total -= self.last_transaction
    #quantity.times { self.items.pop } this code might pop that out
  end


end
