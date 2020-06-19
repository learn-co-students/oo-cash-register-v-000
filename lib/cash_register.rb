class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
  @last_transaction = quantity * price
  self.total += price * quantity
  item_list = "#{item} " * quantity
    item_list.split(" ").each do |item|
      items << item
    end

  end

  def apply_discount
    self.total -= self.total * discount/100
    if discount != 0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
    
  end

  def void_last_transaction
    self.total -= @last_transaction
  end

end