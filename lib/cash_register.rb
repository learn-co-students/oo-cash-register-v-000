class CashRegister

  attr_accessor :total

  @@items = []

  def initialize(employee_discount_percent = 0)
    @total = 0
    @employee_discount_percent = employee_discount_percent
    @items = []
    @transaction_amounts = []
  end

  def discount
    @employee_discount_percent
  end

  def add_item(title, price, quantity = 1)
    @items << Array.new(quantity, title)
    @transaction_amounts << price
    if quantity == 1
      @total += price
    else
      @total += price * quantity
    end
  end

  def apply_discount
    if @employee_discount_percent == 0
      "There is no discount to apply."
    else
      self.total = @total - (@total * (@employee_discount_percent / 100.0)).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items.flatten
  end

  def void_last_transaction
    self.total = @total - @transaction_amounts.pop
  end

end

