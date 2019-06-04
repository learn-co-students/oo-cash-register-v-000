class CashRegister

  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0.00
    @discount = discount
    @items = []
  end

  def items
      @items
    end

  def add_item(title, price, quantity = 1)
     self.total += price * quantity
     quantity.times do
       items << title
     end
   end


    def apply_discount()
      if @discount
       @total = @total * (1 - @discount / 100)
      return "There is no discount to apply."
      else
    return  "After the discount, the total comes to $#{@total}."
      end
    end


    def void_last_transaction
    @total == @price
    end







end
