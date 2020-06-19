
class CashRegister

  attr_accessor :total, :discount, :totalreset



  def initialize(*d)
    @total = 0
    @discount = d
    @items = []
    @totalreset = 0
  end

  def discount
    @discount[0]
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    counter = 0
      until counter == quantity
        @items << title
        counter += 1
      end

    @oldtotal = @total
    @total = (price * quantity + @total)
  end

  def apply_discount
    if @discount[0] != nil
      @total = @total - (@discount[0] * 10)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @totalreset
    @total
  end

end
