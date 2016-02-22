require 'pry'
class CashRegister

  attr_accessor :total, :discount, :title, :apply_discount, :quantity, :void_last_transaction

  def initialize(discount=0)
    @total=0
    @discount=discount
    @cart=[]
  end

  def add_item(title,price,quantity=1)
    item_all={}
    item_all[:item_name]=title
   item_all[:price]=price
    item_all[:quantity]=quantity

    @cart << item_all

    @total += price*quantity

   end

  def apply_discount

   if @discount!=0
   @total= self.total-discount*10
    "After the discount, the total comes to $#{@total}."
     else
     "There is no discount to apply."
   end
  end


  def items
   @items=[]
    @cart.collect do |item_all|
      for quantity in 1..item_all[:quantity]
      #item_all.each do |qty|
       #while qty=1 && qty==item_all[:quantity]

    @items << item_all[:item_name]

    # @item_all.collect{|name| name==item_name}
    #@cart.each{|name| name== title}
    #@cart

      end
  end
     @items
  end
  def void_last_transaction
      #@cart.each do |item_all|


      #item_all[:price].collect do|prices|
       # prices==item_all[:price].length
      #@void_last_transaction = @total-self.total.last

  end
end
