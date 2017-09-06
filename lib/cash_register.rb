require 'pry'
class CashRegister

  attr_accessor :discount, :total, :items, :last_transaction

#EVERY TIME we do @total WE CAN DO self.total

  def initialize(discount=nil)
    @discount = discount
    @total = 0
    @items = [ ]
  end

  def discount
    self.discount = @discount
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    # @title = title
    # @quantity = quantity
    @total += price * quantity
    @total
    self.last_transaction = price * quantity
  end

  def apply_discount
    @total = @total.to_f * ((100.to_f-@discount.to_f)/100.to_f)

    @total = @total % 1 == 0 ? @total.to_i : @total.to_f

    if @discount == nil
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end

  # def items
  #   # @quantity.times do
  #   #   @items << @title
  #   @items
  #     #@items.fill(@title, @items.size, @quantity)
  # end
  # @items
  # end

  def void_last_transaction
    @total = @total - self.last_transaction
    @total
  end
end
