
require 'pry'

class CashRegister
  attr_accessor :total, :title, :price, :discount, :quantity
  @@register = []



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@register << self
    @title = title
    @@title_quantity = []


  end

  def total
    @total

  end

  def add_item(title, price, quantity = 1)
    combined_array = []
    combined_array << title
    combined_array << quantity
    @@title_quantity << combined_array


    @price = price
    @title = title
    @quantity = quantity

    @total = (@price * quantity) + self.total


  end

  def apply_discount
      if @discount == 0
          return "There is no discount to apply."
      else
        updated_discount = (self.price * @discount)/100
        @total = (self.total - updated_discount)
        return "After the discount, the total comes to $#{@total}."


      end
  end
  def items
    all_items = []
    @@title_quantity.each do |x|
      quan = x[1]
      quan.times do
        value = x[0]
        all_items << value

      end



    end
all_items

  end


  def void_last_transaction
    last_item = @@register.length
    last_item = @@register[last_item-1]
    @total -= last_item.price
    

  end

end
