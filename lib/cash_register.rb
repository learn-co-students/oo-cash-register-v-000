
class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(title, price, quantity = 1)
    @last_price = price
    @last_quantity = quantity
    @total += price * quantity
    quantity.times do @items << title  end
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      @total = total - (total * discount / 100)
      return "After the discount, the total comes to $#{total}."
    end
  end

  def void_last_transaction
    @total -= (@last_price * @last_quantity)
    @items.pop(@last_quantity)
  end


end
