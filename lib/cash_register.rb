class CashRegister
  attr_accessor :total, :last_transaction, :discount

  def initialize(discount=0)
    @@items_bought = []
    @total = total
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, items=1)
    @total += (price * items)
    @last_transaction = (price * items)
    items.times do
         @@items_bought << title
      end
  end

  def apply_discount
    discounted_total = (@total *= (1-(@discount.to_f/100))).to_i
    if discounted_total == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{discounted_total}."
    end
  end

  def items
    @@items_bought
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
