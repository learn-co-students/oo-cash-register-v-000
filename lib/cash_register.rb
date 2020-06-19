require 'pry'
class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times{@items << title}
    @total += price * quantity
    @last_transaction = {"title" => title, "price" => price, "quantity" => quantity}
  end

  def apply_discount
    @total = @total - (@total * @discount / 100)

    if @total > 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction["price"] * @last_transaction["quantity"]
    @items.pop(@last_transaction["quantity"])
  end
end
