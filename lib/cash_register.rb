class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    # @price_of_last_product = 0
  end

  ## Just put it in an attr_accessor -- duh.
  # def discount
  #   @discount
  # end

  def add_item(title, price, quantity=1)
    self.total += price * quantity

    # counter = quantity
    # while counter > 0
    #   self.items << title
    #   counter -= 1 
    # end
    quantity.times do 
      items << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    # @total -= @total * self.discount/100
    # if self.discount == 0
    #   "There is no discount to apply."
    # else
    #   "After the discount, the total comes to $#{@total}."
    # end 
    if discount != 0
      self.total -= self.total * discount/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  ## Just put it in an attr_accessor -- duh.
  # def items
  #   @items
  # end

  def void_last_transaction
    # @total -= @price_of_last_product
    self.total = self.total - self.last_transaction
  end
end
