class CashRegister
  attr_accessor :total, :discount, :items, :lastitem

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
    @items << item
  end
  end

  def discount
    @discount
  end

  def apply_discount
    if @discount != 0
      @total = @total - ((@discount/100) * @total)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
    @total
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @lastitem

  end
end
  # attr_accessor :total, :discount, :items, :lastitem
  #
  # def initialize(discount = nil)
  #   @total = 0
  #   @discount = discount
  #   @items = []
  # end
  #
  # def discount
  #   @discount = 20
  # end
  #
  # def add_item(item, price, quantity = 1)
  #   @total += price * quantity
  #   @items << item
  # end
  #
  # def apply_discount
  #     if @discount == nil
  #       "There is no discount to apply."
  #     else
  #       @total = (@total - (@discount/100))
  #       "After the discount, the total comes to $#{@total}."
  #     end
  #   end
  #
  #   def items
  #     @items
  #   end
  #
  #   def void_last_transaction
  #     @items.pop
  #     @total = @total - @lastitem
  #     @total
  #   end
  # end
