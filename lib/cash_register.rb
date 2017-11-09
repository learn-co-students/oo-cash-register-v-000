class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @all_items = []
  end

  def add_item(title, price, quantity = 1)
    if quantity
      quantity.times do
        @all_items << title
      end
    else
      @all_items << title
    end

    price = price * quantity
    @total += price

    @last_transaction = price
  end

  def apply_discount
    if self.discount == nil
      "There is no discount to apply."
    else
      @total = @total - (@total * (self.discount * 0.01))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @all_items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
