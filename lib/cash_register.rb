class CashRegister
  attr_accessor :discount
  @total_items=[]
  @total_prices=[]
  @discount_applied = false
  @last_quantity=0

  def initialize(discount=0)
    @discount = discount
  end

  def total
    sum = 0
    @total_prices.each {|price| sum << price} #add all prices
    sum = sum - sum*(@discount/100) if discount_applied? # factors in discount if it's been applied
    sum
  end

  def add_item(item, price, quantity=1)
    quantity.times do |x| #x is useless
      @total_items.push(item)
      @total_prices.push(price)
    end
    @last_quantity=quantity
  end

  def apply_discount
    @discount > 0 ? @discount_applied? = true : puts "There is no discount to apply."
  end

  def items
    @total_items
  end

  def void_last_transaction
    @total_items.pop(@last_quantity)
    @total_prices.pop(@last_quantity)
  end




end
