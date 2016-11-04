class CashRegister
attr_accessor :total, :discount, :items, :last_transaction

  def initialize(employee_discount = 0)
    @items = []
    @total = 0
    @discount = employee_discount
  end

  def add_item(title, price, quantity = 1)

    if (quantity == 1)
      @items << title
    else
      count = 1
      while count <= quantity do
        @items << title
        count += 1
      end
    end

    @total += price*quantity
    @last_transaction = price*quantity

  end

  def apply_discount

    if (@discount == 0)
      return "There is no discount to apply."
    else
      discount_percent = "0." + @discount.to_s
      @total = @total * (1-discount_percent.to_f)

      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    return @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
