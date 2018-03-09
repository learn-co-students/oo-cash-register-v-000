require 'pry'

class CashRegister

  attr_accessor :total, :discount, :last_price, :last_quantity
  attr_reader :items


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []

    #def self.discount
    #  discount = 20
    #end
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_price = price
    @last_quantity = quantity

  end

  def apply_discount
    # binding.pry
    if discount != 0
      @total -= @total * (discount.to_f / 100)
        @total.to_i
        "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  #def items(add_item)
  #  new_register = []
  #  add_item.collect do |title|
  #     end
  #     new_register
  # end

  def void_last_transaction
    #binding.pry
    @total -= @last_price * @last_quantity
    @last_quantity.times do
      @items.pop
    end

  end

end
