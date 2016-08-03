class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction_amount

  def initialize(discount=0)
    @total = 0
    @last_transaction_amount = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total = @total + (price * quantity)
    @last_transaction_amount = price * quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      string = "There is no discount to apply."
    else
      discount_percentage = 100 - @discount
      @total = (@total * discount_percentage) / 100
      string = "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction_amount
  end

end
