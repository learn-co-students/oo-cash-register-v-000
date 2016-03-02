
class CashRegister
  attr_accessor :item, :price, :discount, :total, :void
  attr_reader :basket


  def initialize(discount=0)
    @basket = []
    @total = 0
    self.cash_register_with_discount(discount)
  end

  def cash_register_with_discount(discount)
    @total = 0
    self.discount = discount
  end

  def total
    @total
  end


  def add_item(item, price, quant=1)
    @void = []
    if quant > 1
      price *= quant
      count = 1
      while count < quant
        basket << item
        count += 1
      end
    end
    basket << item
    @total += price
    @void << [item, price, quant]
  end

  def apply_discount
    self.discount = discount
    if discount > 0
      disc = (100 - discount) * 0.01
      @total *= disc
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    return basket
  end

  def void_last_transaction
    p = void[-1][1]
    q = void[-1][2]
    i = void[-1][0]
    @total -= p
    if q > 1
      count = 1
      while count < q
        basket.delete_if{|wrd| wrd == i }
        count += 1
      end
    else
      basket.delete_if{|wrd| wrd == i }
    end
  end

end
