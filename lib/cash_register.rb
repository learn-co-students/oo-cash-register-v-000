class CashRegister
  attr_accessor :total, :last_trans, :discount, :items, :last_transaction


  def initialize(employee_disc = 0)
    @total = 0
    @items = []
    @discount = employee_disc
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price
    @total += price * quantity
    while quantity > 0 do
      @items << title
      quantity -= 1
    end
  end

  def discount_percentage
    @discount.to_f/100
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      if @total != 0
        @total -= (@total * discount_percentage)
        "After the discount, the total comes to $#{@total.floor}."
      end
    end
  end

  def void_last_transaction
    @total -= @last_transaction
    @total
  end

end
