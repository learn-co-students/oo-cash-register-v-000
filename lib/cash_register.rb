require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :price
  @@all = []
  def self.all
    @@all
  end

  def initialize(d=0)
    @total = 0
    @discount = d
    @items = []
  end

  def add_item(item, price, q=1)
    self.total += price * q
    q.times{|i| @items << item}
    @price = price
    #self.class.all
    #binding.pry
  end

  def apply_discount
    discount = (((self.discount.to_f) / 100) *  @total).to_i
    new_total =  self.total -= discount
    if @discount != 0
      "After the discount, the total comes to $#{new_total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
 end

def void_last_transaction
  self.total -= @price
end

end
