require 'pry'

class CashRegister
  attr_accessor :discount, :items,:total, :transaction_history #:last_transaction
  attr_reader
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @transaction_history = []
  end

  def add_item(item, price, quantity=1)
    transaction = (price * quantity).round(2)
    transaction_history.push(transaction)
    @total += last_transaction
    quantity.times do
    @items.push(item)
  end
  end

  def apply_discount
    @total = total - (discount.to_f / 100 * total)
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{total.round}."
    end
  end

  def last_transaction
    @transaction_history.last

  end

  def void_last_transaction
    @total -= last_transaction
    @transaction_history.delete(last_transaction)

  end

end
