class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @array_of_all_items = []
  end

  def add_item(title, price, quantity = 1)
    repeated = [title] * quantity * ' '
    @array_of_all_items << repeated.split

    @last_transaction = price
    self.total += price * quantity
  end

  def apply_discount
    if self.discount == nil
      "There is no discount to apply."
    else
      @total = total - (total * (discount * 0.01))
      "After the discount, the total comes to $#{total.to_i}."
    end
  end

  def items
    @array_of_all_items.flatten
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
