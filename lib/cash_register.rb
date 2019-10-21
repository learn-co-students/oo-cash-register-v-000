class CashRegister

  attr_accessor :total, :discount, :title, :price, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 0)
    if quantity == 0
      @items.fill(title, @items.count, 1)
      @last_transaction = price
      @total = @total + price
    else
      @items.fill(title, @items.count, quantity)
      @last_transaction = price * quantity
      @total = @total + price * quantity
    end
  end

  def apply_discount
    if discount > 0
      @total = ((1-(@discount/100.to_f)) * @total).to_i
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
