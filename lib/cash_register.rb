class CashRegister
  attr_accessor :total, :discount, :items, :deal_hash
 

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transaction = {price: 0, item: []}
  end

  def add_item(item, price, num = 1)
    num.times do
      self.items << item
      self.total = @total + price
    end
    # keep record of last transaction
    @transaction[:price] = price
    @transaction[:item] << item
  end


  def apply_discount
    if self.discount != 0
      self.total -= ((self.total * self.discount) / 100)
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @transaction[:price]
    @items -= @transaction[:item]
end
end


  


