
class CashRegister

attr_accessor :total, :discount, :items


def initialize(discount = 0)
  @total = total
  @total = 0
  @discount = discount
  @items = []
end


def add_item(title, price, quantity = 1)
  self.total = price * quantity
  @items << title
end


end
