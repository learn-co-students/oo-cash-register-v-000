class CashRegister
  attr_accessor :discount, :total, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @item_array = []
  end

  def add_item(title, price, quantity = 1)
    repeated = [title] * quantity * ' '
    @item_array << repeated.split

    @last_transaction = price
    self.total += price * quantity
  end

  def apply_discount
    if self.discount == nil
      "There is no discount to apply."
    else
      @total = @total - (total * (discount * 0.01))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @item_array.flatten
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end
