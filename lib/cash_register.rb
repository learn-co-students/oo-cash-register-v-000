require "pry"
class CashRegister
  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount=0.0)
    @total = 0.0
    @discount = discount.to_f
    @items = []
    @last_item = {}
  end

  def total
    @total
  end

  def add_item(item,price,quantity=1)
    @last_item = {item:item,price:price,quantity:quantity}
    while quantity > 0
      @total+=price
      @items<<item
      quantity-=1
    end
  end

  def items
    @items
  end

  def apply_discount
    self.total = self.total.to_f*(1-@discount/100)
    return "There is no discount to apply." if @discount == 0
    return "After the discount, the total comes to $#{self.total.to_i}." if @discount > 0
  end

  def void_last_transaction
    @total-=(@last_item[:price]*@last_item[:quantity])
    @items.slice(@items.length-1-@last_item[:quantity],@last_item[:quantity])
  end

end
