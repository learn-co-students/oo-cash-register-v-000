class CashRegister

  attr_accessor :total, :discount




  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @order_total = 0
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @quantity = quantity
    @order_total = price * quantity #multiply price/quantity for order total
    last_total = self.total #save current total before adding new order amount
    self.total = self.total + @order_total # add order_total to current register total
      # -- until loop to add proper quantity of items to @items array --
      i = 0 # set counter variable
      until i == @quantity # until counter is equal to quantity
      @items << @title # push item title to items array
      i += 1 #increment counter variable
      end
  end

  def apply_discount
      discount_amount = (self.discount.to_f/100) * self.total
      if discount_amount == 0
        return "There is no discount to apply."
      else
      self.total = self.total - discount_amount.to_i
      return "After the discount, the total comes to $#{self.total}."
      end
  end

  def items
    @items # return array of all items added to cart
  end

  def void_last_transaction
    self.total = self.total - @order_total
  end

end
