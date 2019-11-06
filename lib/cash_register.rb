class CashRegister

  attr_accessor :total, :discount, :last_item

  def initialize(discount = 0) #creation of function, discount set to 0
    @total = 0 #total of items set to zero
    @discount = discount #employee discount amount
    @array = []
  end

  def add_item(title, price, quantity = 1)
    self.total = price * quantity + self.total
    quantity.times {@array << title}
    @last_item = price
  end

  def apply_discount
    discount_amount = total * (@discount.to_f / 100) #to decimal
    @total = self.total - discount_amount.to_i #to integer
    @total != 0 ? "After the discount, the total comes to $#{total}." : "There is no discount to apply."
  end

  def items
    @array #displays array
  end

  def void_last_transaction
    @total = self.total - self.last_item
  end

end
