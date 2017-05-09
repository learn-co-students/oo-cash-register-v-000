class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item_list = []
    @last_transaction = 0
  end

  def apply_discount
    if @discount != 0
      employee_discount = 1-(self.discount.to_f/100)
      @total = @total*employee_discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def add_item(title, price, quantity=1)
    @last_transaction = price*quantity
    @total = @total + price*quantity
    quantity.times do
      @item_list << title
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end

# mine=CashRegister.new(20)
# mine
