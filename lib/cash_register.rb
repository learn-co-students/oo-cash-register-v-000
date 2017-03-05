
class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount=0)
    self.items = []
    self.total = 0
    @discount = discount
  end


  def items
    @items
  end

  def add_item(title, price, quantity=1)
    @last_transaction = price
    puts quantity
    i = quantity
      until i == 0
      @items.push(title)
      i-=1
    end

    new_total = price * quantity
    @total += new_total
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      percent = 0.01 * @discount
      disc = percent * @total
      @total -= disc.floor
      return "After the discount, the total comes to $#{@total}."
    end
  end
end

cr = CashRegister.new
puts cr.total
puts cr
