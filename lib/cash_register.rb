class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, value, quantity = 1)
    self.total += value * quantity
##################################################
    # quantity_counter = 0
    # loop do
    #   quantity_counter += 1
    #   self.items << item
    #   if quantity_counter == quantity
    #     break
    #   end
    # end
#####################################refactorPLZkTY
#totally forgot about using the TIMES LOOP - but here's the LEARNsolution:
    quantity.times do
      items << item
    end
##################################################
    self.last_transaction = [item, value, quantity]
  end

  def apply_discount
    if discount != nil
      money_off = self.total * self.discount / 100
      self.total -= money_off
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction[1] * self.last_transaction[2]
  end


end #<--------class end
