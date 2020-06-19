require 'pry'

def reload!
    load 'lib/cash_register.rb'
end

require_relative './cash_register.rb'

Pry.start
