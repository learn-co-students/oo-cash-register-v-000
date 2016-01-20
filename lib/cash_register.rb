class CashRegister

attr_accessor :total, :discount, :last_transaction



  def initialize(discount = 0 )
    @total = 0 
    @discount = discount
    @item = [] 
    @last_transaction = []
  end

  def add_item(title, price, num_items = 1)
    @title = title 
    @price = price
    @num_items = num_items
   
    self.total += price * num_items

    

    num_items.times do 
    @item << @title
  end

    num_items.times do 
      @last_transaction << @price
    end

  end

  def apply_discount
    @discount = @discount / 100.to_f
    if @discount == 0
       "There is no discount to apply."
    else
    @total -= @total * @discount
     "After the discount, the total comes to $#{@total.to_i}."
   end
  end

  def items
    @item
  end

  def void_last_transaction
    last = @last_transaction.last
   
    @total -= last
  end
  

end
