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
