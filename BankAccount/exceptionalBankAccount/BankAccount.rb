# BankAccount
require_relative 'exceptionalBankAccount'

class BankAccount
	include Comparable

	@@id = 0
	
	attr_reader :balance
	
	def initialize
		@id = @@id = (@@id + 1)
		@balance = 0
	end
	
	def <=>( other_account )
		balance <=> other_account.balance
	end
	
	def deposit( amount )
		raise NegativeAmountError.new( "deposit", self ) if amount < 0
		@balance += amount if amount > 0
	end
	
	def withdraw( amount )
		raise InsufficientFundsError.new( @id, amount, self.balance ) if self.balance < amount
		@balance -= amount if amount > 0 and amount <= @balance
	end
	
	def balance
		@balance
	end
	
	def to_s
		"Account #{@id} - Balance: #{@balance}"
	end
end

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

