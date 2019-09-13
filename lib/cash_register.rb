
class CashRegister
  attr_accessor :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total=0
    @discount = discount
    @items_bought=[]
  end

  def add_item(item, item_price, item_quantity = 1)
    @last_transaction =  item_price*item_quantity
    self.total += @last_transaction
    i=0
    while i< item_quantity
      @items_bought << item
      i+=1
    end
  end

  def apply_discount
    if discount !=0
      self.total *=(1-(@discount.to_f/100))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items_bought
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
