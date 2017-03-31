class CashRegister
  attr_accessor :total, :discount, :items, :price

  def initialize(discount=nil)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    quantity.times {@items << item}
    @price = price
    @total = total + price * quantity
  end

  def apply_discount
    @total = (@total * (1 - (discount/100.0))).round if @discount != nil

    !(@discount == nil) ? "After the discount, the total comes to $#{@total}." : "There is no discount to apply."
  end

  def void_last_transaction
    @total -= @price
  end
end

# transaction = CashRegister.new(20) #=> new cash register class intialized with discount
# transaction2 = CashRegister.new #=> new cash register class initliaed without discount
# transaction.add_item("eggs", 0.98) #=> adds price to total
# transaction.add_item("books", 5.00, 3) #=> adds price to total
