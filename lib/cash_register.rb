class CashRegister

  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end


  def discount
    @discount
  end


  def add_item(title, price, quanity = 1)
    
    @prev_cart = @cart
    quanity.times do  
      @cart << title
    end

    @prev_total = @total
    @total += price * quanity
  end


  def apply_discount

    if discount == 0
      return "There is no discount to apply."
    end

    @total = total - total * discount.to_f / 100
    "After the discount, the total comes to $#{total.to_i}."
  end


  def items
    @cart
  end


  def void_last_transaction
    @cart = @prev_cart
    @total = @prev_total
  end



end #class end
