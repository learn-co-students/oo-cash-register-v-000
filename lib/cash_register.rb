class CashRegister
  attr_accessor :total, :discount


  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items = []
    @prices = []
  end


  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times{@items << title}
    @prices << price
  end

  def apply_discount
    remainder = (@discount.to_f / 100)
    sale_amount = remainder * @total
    @total -= sale_amount.ceil
      if @discount > 0
          return "After the discount, the total comes to $#{@total}."
       elsif @discount == 0
          return "There is no discount to apply."
       end
   end


  def items
    @items
  end


  def void_last_transaction
    last = @prices.fetch(-1)
    @prices.pop
    @total -= last
  end


end
