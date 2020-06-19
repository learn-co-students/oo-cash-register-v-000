class CashRegister
  attr_accessor :total, :discount, :items, :prices

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    quantity.times do
      @items << title
    end
      @prices << price
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total * ((100 - @discount)*0.01)
      return "After the discount, the total comes to $#{@total.ceil}."
    end
  end

    def items
      @items
    end

  def void_last_transaction
    @items.pop
    @total = @total - @prices.pop
  end

end
