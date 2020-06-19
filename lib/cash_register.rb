class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 0)
     quantity == 0 ? @items << title : @items << [title] * quantity
    quantity == 0 ? title = price : title = price * quantity
    @total += title
    @last_transaction = title
  end

  def apply_discount
    if @discount > 0
      discount = @total * (@discount.to_f / 100)
      @total = @total - discount.to_i
      "After the discount, the total comes to $#{@total}."
    elsif @discount = 0
      "There is no discount to apply."
    end
 end

  def items
    @items.flatten
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
