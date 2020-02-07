require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :transaction

  def initialize(discount=0)
    cash_register_with_discount(discount)
    # @discount = discount
    @total = 0
    @items = []
  end

  def cash_register_with_discount(discount)
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    @transaction = {item: item, price: price, quantity: quantity}
    @total += price * quantity
    @transaction[:quantity].times do
      @items << item
    end

  end

  def total
    @total
  end

  def items
    @items
  end

  def apply_discount
    if self.cash_register_with_discount(discount) != 0
      self.total *= (1 - self.discount.to_f / 100)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= transaction[:price] * transaction[:quantity]
    @items.delete(transaction[:item])
  end

end # end of Class
