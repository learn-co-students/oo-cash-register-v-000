class CashRegister
  attr_accessor :total, :discount, :last


  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    if quantity != 0
      self.last = self.total+=(price*quantity)
      quantity.times do
        @items << title
      end
    else
      self.last = self.total+=price
    end
  end

  def apply_discount
   @discount == nil ? ("There is no discount to apply.") : ( new_total = self.total-= (0.01*@discount*@total).to_i
    "After the discount, the total comes to $#{new_total}.")
  end

  def items
    @items.collect { |e| e }
  end

  def void_last_transaction
    self.total = self.total - self.last
  end

end
