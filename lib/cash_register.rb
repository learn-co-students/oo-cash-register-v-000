class CashRegister
  attr_accessor :discount

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @total_items=[]
    @total_prices=[]
    @discount_applied = false
    @last_quantity=0
  end

  def total
    sum = 0
    @total_prices.each {|price| sum += price}
    sum = sum - sum*(@discount.to_f/100) if @discount_applied # factors in discount if it's been applied
    sum
  end

  def total=(modification)
    difference = self.total - modification
    self.add_item("modification to $#{modification}", (difference*(-1)))
    puts (difference*(-1))
    self.total
  end

  def add_item(item, price, quantity=1)
    quantity.times do |x| #x is useless
      @total_items.push(item)
      @total_prices.push(price)
    end
    @last_quantity=quantity
  end

  def apply_discount
    if @discount > 0
      @discount_applied = true
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @total_items
  end

  def void_last_transaction
    @total_items.pop(@last_quantity)
    @total_prices.pop(@last_quantity)
  end

end
