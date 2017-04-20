require 'pry'
class CashRegister

  attr_accessor :items, :discount, :total, :transactions

   #@transaction = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = {}
    #discount = total.percent(20)
    #optionally takes an employee discount on initialization
  end

  def total#(price)
    @total #= self.total + self.price = current_total
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times { @items << title }
    @transactions = {
      :title => title, :price => price, :quantity => quantity
    }
  end

 def apply_discount
   if self.discount > 0
    self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    self.total.round(2)
     "After the discount, the total comes to $#{self.total}."
   else
     "There is no discount to apply."
   end
end



  #def items(item)
  #returns an array containing all items that have been added
  # item_name only in returned array, not price or quantity
  #end

 def void_last_transaction
  @total -= (@transactions[:price] * @transactions[:quantity])
  @transactions[:quantity].times{@items.pop}
  @transactions = {}
end


end
