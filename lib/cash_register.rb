class CashRegister

  attr_accessor :title, :price, :total, :discount, :all, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @all = []
    @last_transaction = 0
    #puts "discount = #{discount} || total = #{@total}"
    final = @total + @discount
    final
  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price
    quantity.times do
      @all << title
    end
    @last_transaction = price * quantity
    @total += price * quantity
  end

  def apply_discount
    #puts "total = #{@total.to_f} | discount = #{discount.to_f} | final = #{@total.to_f * (@discount.to_f/100)}"
    @total = @total.to_f - (@total.to_f * (@discount.to_f/100))
    if @discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @all
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
