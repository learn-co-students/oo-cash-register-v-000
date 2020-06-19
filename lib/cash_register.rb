
class CashRegister
  attr_accessor :total
  attr_accessor :discount
  attr_accessor :cart
  attr_accessor :last_item_cost

  def initialize(discount = 1.0)
    @total = 0.0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity = 1.0)
    quantity.to_i.times do
      @cart << title
    end
    cart_price = price * quantity
    # puts "Added #{title} at price: #{price} x #{quantity}. old total: #{total}"
    @total += cart_price
    # puts "Current total now: #{total}"
    @last_item_cost = cart_price
  end

  def apply_discount
    @total = @total * 0.8
    if @discount != 1.0
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total = @total - @last_item_cost
  end

  def total
    @total
  end

end
