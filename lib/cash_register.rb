class CashRegister
  attr_accessor :discount, :item, :last_transaction, :total
  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0
  end
  def add_item(cost, name , number = 1)
    self.total = cost * number
    @items << name
  end
  def add_item2(cost,name,number = 1)
    self.total = cost * number
  end
  def apply_discount
  end
  def items
  end
  def void_last_transaction
  end
end
