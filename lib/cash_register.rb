

class CashRegister
attr_accessor :items, :discount, :total, :price

  def initialize(discount=0)
   @discount=discount
   @total=0
   @items=[]
   @price=[]
  end

  def discount
    @discount
  end
  def add_item(item, price,quantity=1)
    self.total+=price*quantity
    quantity.times do
    @items<<item
    @price<<price
  end
  end

  def apply_discount
    if discount==0
      "There is no discount to apply."
    else
      discount>0
      self.total=((self.total*(100.0-discount.to_f)/100).to_i)
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.items.pop
    self.total-=price.pop
  end
  
end
