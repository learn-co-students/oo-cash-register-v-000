require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount

    @cart = [] # holds list of items purchased
    @last_item = {} # holds last item purchased
  end

  def add_item(title, price, quantity=1)
    @item_detail ={}
    @item_detail[:name] = title
    @item_detail[:price] = price
    @item_detail[:quantity] = quantity

    self.total+= (price*quantity)

    @cart << @item_detail

    @last_item = {}
    @last_item[:price] = price
    @last_item[:quantity] = quantity

  end

  def apply_discount
    if self.discount!=0
      self.total=@total*(1-@discount/100.00)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    list = []  # holds list of items purchaeed
    @cart.each do |item_detail|  # for each item in cart,
      for qty in 1..item_detail[:quantity]  # based on the quantity of the item in the cart,
        list << item_detail[:name]  # add the name of that item to the list, the same number of times as quantity purchased
      end
    end

    list

  end

  def void_last_transaction
    @total -= @last_item[:price]*@last_item[:quantity]
  end

end
