class CashRegister

  attr_accessor :total, :discount, :itemsIn, :last_transaction

  def initialize(discount = 0.00)
    self.total = 0.00
    self.discount = discount
    self.itemsIn = {}
    self.last_transaction = {}
  end

  def add_item(title, price, quantity = 1)
    self.itemsIn[title] = {price: price, quantity: quantity}
    self.total += price * quantity
    self.last_transaction.clear
    self.last_transaction[title] = {price: price, quantity: quantity}
  end

  def apply_discount
    if discount > 0.00
      self.total *= (1 - self.discount/100.0)
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    arr = []

    self.itemsIn.each do |item, info|
      info[:quantity].times do
        arr << item
      end
    end

    arr
  end

  def void_last_transaction
    self.last_transaction.each do |item, info|
      cost = info[:price] * info[:quantity]
      self.total -= cost
      self.last_transaction.delete(item)
      self.itemsIn.delete(item)
    end
  end

end
