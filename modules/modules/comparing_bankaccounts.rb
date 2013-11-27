# comparing_bankaccounts

require_relative "BankAccount"

b1 = BankAccount.new
b1.deposit 100
b2 = BankAccount.new
b2.deposit 1000

puts b2 > b1
puts b2 < b1
puts b1 == b2