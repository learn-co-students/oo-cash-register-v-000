class CashRegister
  attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transcation = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    price_quant = price * quantity
    @total += price_quant
    @last_transcation = price_quant
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    elsif discount != 0
      @total = @total * (100 - @discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transcation
  end


end
