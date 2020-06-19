
class CashRegister
  attr_accessor :discount, :total, :items, :ledger

  def initialize(discount = nil)
    self.total = 0
    self.discount = discount
    self.items = []
    self.ledger = []
  end

  def add_item(title,price,quantity=1)
    sale = price * quantity
    self.total += sale
    quantity.times {self.items << title}

    self.ledger << {:title => title,:quantity => quantity,:sale => sale}
  end

  def apply_discount
    if !discount
      return "There is no discount to apply."
    else
      self.total = self.total - (self.total * discount/100)

      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    last_transaction = self.ledger.pop()
    self.total -= last_transaction[:sale]

    #delete out of items list
    last_transaction[:quantity].times {
      self.items.delete_at(self.items.index(last_transaction[:title]) || self.items.length)
    }
  end

end
