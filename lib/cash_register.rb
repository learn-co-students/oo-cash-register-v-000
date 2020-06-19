class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = {title: "", price: 0.0, quantity: 1}
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_transaction[:title] = title
    @last_transaction[:price] = price
    @last_transaction[:quantity] = quantity

    while quantity > 0
      @items << title
      quantity -= 1
    end

  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total * (100 - @discount) / 100
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - (@last_transaction[:price] * @last_transaction[:quantity])
  end
end
