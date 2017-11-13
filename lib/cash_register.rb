require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def discount
    @discount
  end

  def add_item(item, price, quantity = 1)
    @last_transaction = price
    quantity.times do    # loops through, adds item x times until proper amount added to list.
      @items << item
    end
    self.total += price * quantity
  end



  def apply_discount
    if @discount != 0
      self.total -= (self.total * self.discount/100)
      #ie $40.00 - ($40 * .10 off)
      # self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      # converts discount to integer. 100 percent - discount percent = total percent to multiply total by
      # then once total is calculated, convert to string -- but why?
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end

  end

  #class Numeric --- percentage = a/b*100
    #def percentage_of(n)
      #self.to_f / n.to_f * 100.0
    #end
  #end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end



end
