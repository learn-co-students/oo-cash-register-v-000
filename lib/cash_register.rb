class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @purchased = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity

    product = {}
    product[:title] = title
    product[:price] = price
    product[:quantity] = quantity
    @purchased << product
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      new = (@total -= @total * @discount / 100)
      return "After the discount, the total comes to $#{new}."
    end
  end

  def items
    all_items = []
    @purchased.each do |product|
      for qty in 1..product[:quantity]
        all_items << product[:title]
      end
    end
    all_items
  end

  def void_last_transaction
    last = @purchased.last
    @total -= last[:price]
  end
end
