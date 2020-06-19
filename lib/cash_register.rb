require "pry"

class CashRegister
 attr_accessor :discount, :total, :item, :last

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = {}
  end

  def add_item(item, price, number = 1)
    @last = self.total += price * number
    @items[item] = number
    # @number = number
    end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
     return "After the discount, the total comes to $#{@total}."
  end

  def items
    cart = []
    @items.each do |items_in_cart, number_of_items|
        cart << items_in_cart.split * number_of_items
    end
      cart.flatten
  end

  def void_last_transaction
    self.total -= self.last
  end

end
