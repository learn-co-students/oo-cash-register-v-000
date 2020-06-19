class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount if discount != nil
    @list = []
  end

  def add_item(title, price, quantity = nil)
    quantity == nil ? @total +=price : @total +=price * quantity

    #used for items method
    if quantity != nil
      title = title.split * quantity
    end
    @list << title

    if quantity != nil
      @last_transaction = price * quantity
    else
      @last_transaction = price * 1
    end
  end

  def apply_discount
    if @discount
      @total = @total - (@total * (@discount/100.to_f))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @list.flatten
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
