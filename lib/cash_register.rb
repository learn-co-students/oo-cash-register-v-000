class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transaction = []
  end

  def add_item(item_name, price, quantity = 1)
    transaction_total = price * quantity
    quantity.times do
      @items << item_name
    end
    @total += transaction_total
    @transaction << transaction_total
  end

  def apply_discount
      #return "There is no discount to apply." unless @discount > 0
      discount_amount = (@discount / 100.to_f)
      @total = @total - (@total * discount_amount)
      if @discount == 0
        return "There is no discount to apply."
      else
      return "After the discount, the total comes to $#{total.to_i}."
    end
  end

  def void_last_transaction
    last_transaction=@transaction.pop
    @total -= last_transaction
  end


end
