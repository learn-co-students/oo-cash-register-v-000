class CashRegister

  attr_accessor :total, :last_transaction

  def initialize(num = 0)
    @total = 0
    @num = num
    @items = []
  end

  def discount
    @num
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total = (price * quantity) + @total
    @items << ((title + ",") * quantity).split(",")
    @last_transaction = (price * quantity)
    @items.flatten!
  end

  def apply_discount
    if discount != 0
      @total = (@total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
