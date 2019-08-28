class CashRegister

  attr_accessor :total, :discount, :price, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end
    else
      @items << title
    end
  end

  def apply_discount
    if @discount > 0
      @employee_discount = (price * discount)/100
      @total -= @employee_discount
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end

end
