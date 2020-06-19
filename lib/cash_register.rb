class CashRegister
 attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @last_transaction = 0
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do |x|
      @items << title
    end
    @last_transaction = price * quantity
  end

  def apply_discount()
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total - ((@discount.to_f / 100) * @total)

      return "After the discount, the total comes to $#{total.round}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
