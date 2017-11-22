require 'pry'


class CashRegister

  attr_accessor :title, :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0.00
    @discount = discount
    @item_array = []
  end

  def add_item(title, price, quantity = 1, last_transaction = nil.to_f)
    @last_transaction = last_transaction
    @title = title
    @price = price.to_f

    @total += (price * quantity)

    quantity.times do
      @item_array << title
    end

    if last_transaction != nil
      @last_transaction = price
    end

  end

  def apply_discount
    if discount <= 0.00
      "There is no discount to apply."
    else
      @total -= ( (@discount.to_f / 100) * @total)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @item_array
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end

#cash_register = CashRegister.new

#cash_register.add_item("apple", 2.50, 3)

#cash_register.add_item("orange", 1.50, 2, "last_transaction")

#cash_register.void_last_transaction

cash_register = CashRegister.new(20)

cash_register.add_item("apple", 2.00, 5)

cash_register.add_item("orange", 1.00, 4, "last_transaction")

puts cash_register.total

cash_register.void_last_transaction

puts cash_register.total

puts cash_register.apply_discount

#binding.pry
