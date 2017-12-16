class CashRegister

attr_accessor :total, :discount, :items, :last_item_price



  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 0)
    if quantity > 1
      counter = 1
      while counter <= quantity do
      @items << title
      counter += 1
      end
    else
    @items << title
    end

    if quantity > 0
      price = price * quantity
    end
    @total = @total + price

    @last_item_price = price
  end

  def apply_discount
    if discount != 0
      @total = @total * ((100 - @discount) * 0.01)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_item_price
  end

end
