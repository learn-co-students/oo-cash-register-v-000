class CashRegister
  attr_accessor :total, :discount, :item, :price, :quantity, :transaction


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @quantity = quantity
    @item = item
    @price = price
    @items = []
    @transaction = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    @total += price*quantity
    q = quantity
    until q == 0 do
      @items.push(item)
      @transaction.push(price*quantity)
      q -= 1
    end
  end

  def apply_discount
    if @discount == 0
      @apply_discount = "There is no discount to apply."
    else
      @total = @total - @discount/100.0 * @total
      @apply_discount = "After the discount, the total comes to $#{total.round}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @transaction.last
  end

end
