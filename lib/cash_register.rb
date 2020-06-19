class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction
  
  def initialize (discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    quantity.times do 
      @items << title 
    end
    @last_transaction = price * quantity
    @total += price * quantity
    @total
  end 

  def apply_discount
    new_discount = @total * @discount / 100
    @total = @total - new_discount
    if @discount > 0 
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction
    @total = @total - @last_transaction
  end
end



  # def add_item(title, amount, quantity=1)
  #   self.total += amount * quantity
  #   quantity.times do
  #     items << title
  #   end
  #   self.last_transaction = amount * quantity
  # end
  
  # def apply_discount
  #   if discount != 0
  #     self.total = (total * ((100.0 - discount.to_f)/100)).to_i
  #     "After the discount, the total comes to $#{self.total}."
  #   else
  #     "There is no discount to apply."
  #   end
  # end
