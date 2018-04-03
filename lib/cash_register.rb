
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def self.total_returns
      @total
  end

  def add_item(title, price, quantity = 1)
     self.total += price * quantity
     quantity.times {@items << title }
     self.last_transaction = price * quantity
  end

  def apply_discount
    @total = @total - @discount  #float????
    if @discount = 0 || @discount = nil
      return "no discount to apply"
    else
      return "Success #{@total}"
    end
  end

    def self.items
      @@items
    end

    def void_last_transaction
      @total - @last_transaction
    end


end
