class CashRegister
attr_accessor :total, :discount, :last


  def initialize(discount=0)
   @total = 0
   @discount = discount
   @item = []
  end

  def add_item(title, price, quantity=1)
    i=0
    @last = price*quantity
    @total += last
    if quantity == 1
      @item << title
    elsif quantity > 1
      while i < quantity
        @item << title
        i +=1
      end
    end
  end

  def apply_discount
    @total -= @discount*10
    if @discount > 1
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

    def items
        @item
    end

    def void_last_transaction
      @total -= @last
    end
  end
