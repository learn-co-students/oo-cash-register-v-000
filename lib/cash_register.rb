class CashRegister
  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item = []
  end

  def add_item(title, price, quantity = 1)
    price = price * quantity
    @total = @total + price
    if quantity == 1
      @items << title
      @last_item = [title, price]
    else
      i = 0
      while i < quantity
        @items << title
        i += 1
        @last_item = [title, price]
      end
    end
  end

  def apply_discount
    @discount = Float(@discount) / 100 # calc percent .2
    @discount = @total * @discount #calc percent of total
    @total = @total - @discount # sub from total
    if @discount != 0
      "After the discount, the total comes to $#{Integer(@total)}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - last_item[1]
  end
end

# would like to delete titles from items in the future
