#bank menu

require_relative "BankAccount"

b1 = BankAccount.new;
b1.deposit 0
choice = 0

until choice == 4
	puts "1. Deposit money into account"
	puts "2. Withdraw money"
	puts "3. Get Balance"
	puts "4. Exit"

	print "What would you like to do? "
	choice = gets.to_i

	begin
		case choice
			when 1 then
				puts "*" * 50
				print "How much money would you like to deposit? "
				amount = gets.to_i
				puts "*" * 50
				b1.deposit amount
			when 2 then
				puts "*" * 50
				print "How Much money would you like to withdraw? "
				amount = gets.to_i
				puts "*" * 50
				b1.withdraw amount
			when 3 then
				puts "*" * 50
				puts "Balance: #{b1.balance}"
				puts "*" * 50

		end
		rescue NegativeAmountError, InsufficientFundsError => e
			puts e
		end
end