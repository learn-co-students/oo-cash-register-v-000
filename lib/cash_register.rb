
class CashRegister

  attr_accessor :total, :discount, :items, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @price = []
  end


  def add_item(item, price, quantity = 1)
    @price << price
    @total += price * quantity
    while quantity > 0
      @items << item
      quantity -= 1
    end
  end

    def apply_discount
        discount_percent = @discount/100.to_f
        discount_in_dollars = @total * discount_percent
        if @discount > 0
        @total = @total - discount_in_dollars
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
      end
    end

    def items
      @items
    end

    def void_last_transaction
      remove_item = @price.pop
      @total -= remove_item
# why doesn't simply subtracting the price work? Why do I have to update with -=?
    end









end
