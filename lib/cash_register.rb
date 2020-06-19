class CashRegister
  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount=0)
    @total = 0
    @last_item = 0
    @discount = discount
    @items = []
  end

  #add_item
  def add_item(title, price, quantity=0)
    if quantity != 0
      quantity.times do
        @items << title
      end
      @total += (price * quantity)
      @last_item = price * quantity
    else
      @total += price
      @last_item = price
      @items << title
    end
  end

  #apply discount
  def apply_discount
    if @discount != 0
      @total -= ((@discount.to_f/100) * @total).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  #void last transaction
  def void_last_transaction
    @total = @total - @last_item
  end


end
