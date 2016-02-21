    puts "Total before discount: #{@total}"
    puts "Discount: #{discount}"
    disc_amt = @total * @discount/100

    puts "disc_amt #{disc_amt}"
    newtotal = @total - disc_amt
    puts "Newtotal: #{newtotal}"
    @total = total - disc_amt
    puts "Amt due: #{@total}"