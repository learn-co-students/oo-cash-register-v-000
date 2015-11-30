class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
    @last_transaction = []
  end

  def add_item(title, price, quantity=1)
    quantity.times do
      @items << title
      @prices << price
    end
    @last_transaction = (price * quantity)
    self.total += @last_transaction
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = (self.total)*(1 - (self.discount/100.0))
      "After the discount, the total comes to $#{self.total.round}."
    end
  end

  def void_last_transaction
    self.total -= @last_transaction
  end


end
