class CashRegister
  attr_accessor :total, :discount, :title, :quantity, :price, :item, :last_transaction

  def initialize(discount = nil)
    @discount = discount.to_f
    @total = 0
    @item = []
  end

  def total
      @total
  end

  def add_item(title, price, quantity = 1)
    @quantity = quantity
    @title = title
    @price = price
    @total = @total + (@price * @quantity)
    quantity.times {|title| @item << @title}
    @last_transaction = price
  end

  def apply_discount
      if @discount == nil || @discount == 0.0
        "There is no discount to apply."
      else
        @total = @total - (@total * (@discount/100.0))
        "After the discount, the total comes to $#{@total.to_i}."
      end
  end

  def items
    @item
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
