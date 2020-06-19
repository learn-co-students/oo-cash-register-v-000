class CashRegister
  attr_accessor :total
  @@items = []
  def initialize(discount = nil)

      @total = 0
    @discount = discount
    def discount
      @discount
    end
  end

  def add_item(title, price, quantity = nil)
    if quantity.nil?
        @@items << title
    else
        quantity.times do |quant|
            @@items << title
        end
    end
    @title = title
    if quantity.nil?
      @price = price
    else
      @price = price * quantity
    end
    @total += @price
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
    @total = ((1-(@discount.to_f/100))*@total).to_i
    "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@items.slice(-4,4)
  end

  def void_last_transaction
    @total = @total - @price
  end

end