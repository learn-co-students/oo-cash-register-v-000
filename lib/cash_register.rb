class CashRegister

attr_accessor :total, :discount, :item, :price, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @price_total = []
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times {@items << item} #ie 5 apples = push up "apple" 5x to items
    quantity.times {@price_total << price} #ie $1, 5 apples = 5 times push up $1 to price total
    @last_item = @price_total.last
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    elsif
      self.total -= (self.discount*10)
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
  #subtracts the last transaction from the total
  #after add_item, remove the last item
  self.total -= @last_item
  end

end

