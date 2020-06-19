class CashRegister

  attr_accessor :total
  attr_reader :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @items_cost = 0 #to make sure the value will renew
    @last_transaction_cost = (price*quantity)
    @last_transaction_quantity = quantity
    quantity.times do
      self.items << title
    end
    self.total += @last_transaction_cost
  end

  def void_last_transaction
    self.items.pop(@last_transaction_quantity)
    self.total -= @last_transaction_cost
  end

  def apply_discount
    self.total = self.total * (1 -(self.discount * 0.01))
    if discount == 0
      "There is no discount to apply."
    else
      #Using "%g" % float, thanks to http://stackoverflow.com/questions/838064/only-show-decimal-point-if-floating-point-component-is-not-00-sprintf-printf
      'After the discount, the total comes to $' + "%g" % self.total + '.'
    end
  end

end
