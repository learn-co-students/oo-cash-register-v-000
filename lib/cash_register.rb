#require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price

def initialize(discount = 0)
  @total = 0

  @discount = discount
  @customer = []
end



def add_item(title, price, quantity = 1)
  item_title = {}
  item_title[:item] = title
  item_title[:price] = price
  item_title[:quantity] = quantity
  @customer << item_title
  @total += price * quantity
end

def items

  items_all = []
    @customer.each do | item_title|

      for q in 1..item_title[:quantity]
        items_all << item_title[:item]
      end
    end
    items_all
    end

#binding.pry

 def apply_discount

    if discount > 0
      @total -= @total * discount/100
     "After the discount, the total comes to $#{@total}."
   elsif discount == 0
     "There is no discount to apply."
    end

  end

  def void_last_transaction
    @customer.collect do |item_title, price|
      @total -= item_title[:price]

    end
  end
 end
