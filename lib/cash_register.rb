class CashRegister

  attr_accessor :discount, :total, :items

  def initialize(discount = nil)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    quantity_counter = 0
    while quantity_counter < quantity do
      @items << title
      quantity_counter += 1
    end
    @total += price * quantity
    @last_price = price * quantity
  end

  def apply_discount
    if @discount != nil
      @total = (@total * (1 - (@discount.to_f/100))).to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_price
  end

end
