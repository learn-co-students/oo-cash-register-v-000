
class CashRegister
  attr_accessor :total,:discount

  def initialize(discount=0)
    @total=0
    @discount=discount
    @items=[]
   end

   def add_item(title,price,quantity=1)
      self.total+= price*quantity
      quantity.times do
        @items<<title
        end
      self.total
    end

    def apply_discount
      if (self.discount!=0)
      self.total= self.total-(self.total*self.discount/100)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  def items
    @items
  end
  def void_last_transaction
    @total=0
  end

end
