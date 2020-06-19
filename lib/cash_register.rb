class CashRegister

  attr_accessor :total, :discount, :transaction

  def initialize(discount = 0)
    @total = 0
    @transaction = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @transaction = price * quantity
    @total += @transaction
    @items << ((title).split(", ") * (quantity))
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    elsif @discount > 0
      @total -= (@total * (@discount * 0.01))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items.flatten!
  end

  def void_last_transaction
    @total -= @transaction
    @total
  end



end
