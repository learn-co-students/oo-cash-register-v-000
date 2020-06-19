class CashRegister

  attr_accessor :total, :discount, :price, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    purchases = {}
    purchases[:item] = item
    purchases[:price] = price
    purchases[:quantity] = quantity

    @items << purchases

    self.total += price * quantity
  end

  def apply_discount
    if self.discount
      self.total = total * (100 - discount) / 100
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    item_data = []
    @items.each do |purchases|
      for qty in 1..purchases[:quantity]
        item_data << purchases[:item]
      end
    end
    item_data
  end

  def void_last_transaction
    self.total -= total
  end

end
