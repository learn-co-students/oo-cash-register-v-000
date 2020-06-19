
class CashRegister
  attr_accessor :total, :discount, :cart, :last_transaction

  def initialize(discount = 0)
    @total = total
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_transaction = price * quantity
    if quantity == 1
      @cart << title
    else
      i = 0
      while i < quantity
        @cart << title
        i += 1
      end
    end
  end

  def apply_discount
    if @discount > 0
      @total -= (@total * (discount.to_f / 100))
      return "After the discount, the total comes to $#{@total.to_i}."
    elsif @discount == 0
      return "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
