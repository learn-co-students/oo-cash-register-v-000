class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @all = []
  end

  def add_item(name, price, quantity = 1)
    list = {}
    list[:name] = name
    list[:price] = price
    list[:quantity] = quantity

    @all << list

    self.total += (quantity * price)
    self.last_transaction = quantity * price
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      total1 = self.total * (discount/100.0)
      self.total -= total1
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    array = []
    @all.each do |list|
      for quantity in 1..list[:quantity]
        array << list[:name]
      end
    end
    array
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
