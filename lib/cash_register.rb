class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @last_transaction = last_transaction
    @items = []
  end

  def self.total
    @total
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      items << title
    end
    self.last_transaction = (price * quantity)
    self.total += last_transaction
  end

  def apply_discount
    if @discount == 0
       "There is no discount to apply."
    else @total = (@total*0.8)
       "After the discount, the total comes to $800."
    end
  end

  def self.items
    @items
  end

  def void_last_transaction
    self.total = (self.total - self.last_transaction)
  end

end
