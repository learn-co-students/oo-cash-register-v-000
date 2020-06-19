class CashRegister

  attr_accessor(:discount, :total, :items)

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(title, price, quantity=1)
    @items << [title] * quantity
    @total += price * quantity
    @last_transaction = price
  end

  def apply_discount

    if @discount > 0
      @total = (((100-@discount.to_f)/100)* @total).to_i

      return "After the discount, the total comes to $#{@total}."
    end
    "There is no discount to apply."
  end

  def items
    @items.flatten
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
