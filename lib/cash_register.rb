require "pry"
class CashRegister

  def initialize(*discount)
    @discount = discount[0]
    @total = 0

    @items = []
    @last_item = 0

  end
  attr_accessor :discount, :total, :items, :last_item

  def add_item(title,price,*quantity)
    #  binding.pry
    if quantity[0] != nil
      self.total += price * quantity[0]
      quantity[0].times{@items << title}
      @last_item = self.total
    else
      self.total += price
      @items << title
      @last_item = self.total
    end

  end

  def apply_discount
    # binding.pry
    if discount != nil
      self.discount = Float(self.discount)
      discount = self.total * self.discount / 100
      self.total -= discount
      "After the discount, the total comes to $#{self.total.round}."
    else
      "There is no discount to apply."
    end

  end

  def items
    @items
  end
  def void_last_transaction
    @total -= @last_item
    @total
  end

  end
