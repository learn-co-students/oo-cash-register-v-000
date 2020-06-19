class CashRegister
  
  attr_accessor :total, :discount, :items, :previous_total
  
  
  def initialize(discount = 0)
    self.items = []
    @total = 0 
    self.discount = discount 
  end 
  
  def add_item(title, price, quantity = 1)
    count = 1
    if quantity >= 1 
      new_price = price * quantity
    else 
      new_price = price 
    end 
    self.previous_total = self.total 
    @total = @total + new_price 
    while count <= quantity
      #count += 1 
      self.items << title 
      count += 1 
    end 
    # title.each do |i|
    #   self.items << i 
    # end 
  end 
  
  def apply_discount
    new_total = self.total.to_f 
    new_discount = self.discount.to_f
    if @discount > 0 
      discount_price = ((new_total * new_discount) / 100)
      pre_price = new_total - discount_price
      self.total = @total - discount_price 
      pre_price = pre_price.to_i 
      new_price = "After the discount, the total comes to $#{pre_price}."
    else 
      new_price = "There is no discount to apply."
    end 
    new_price
  end 
  
  def void_last_transaction
    self.total = self.previous_total 
    @total 
  end 
end 
