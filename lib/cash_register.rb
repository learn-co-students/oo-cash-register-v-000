require "pry"
class CashRegister
attr_accessor :cash_register,:cash_register_with_discount,:total,:items,:last_item_price,:discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title,price,quantity = 1)
    @total += (price * quantity)

    if quantity > 1
      quantity.times do
        @items << title
      end
  else
    @items << title
  end
  @last_item_price = (price * quantity)
end

  def void_last_transaction
    @total -= @last_item_price
  end

  def items
    @items
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total = @total * (1 - (@discount.to_f/100))
      "After the discount, the total comes to $#{total.to_i}."
    end
  end








end
