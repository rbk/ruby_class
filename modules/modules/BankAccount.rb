# BankAccount

class BankAccount
	include Comparable

	@@id = 0
	
	attr_reader :balance
	
	def initialize
		@id = @@id = (@@id + 1)
		@balance = -20
	end
	
	def <=>( other_account )
		balance <=> other_account.balance
	end
	
	def deposit( amount )
		@balance += amount if amount > 0
	end
	
	def withdraw( amount )
		@balance -= amount if amount > 0 and amount <= @balance
	end
	
	def balance
		@balance
	end
	
	def to_s
		"Account #{@id} - Balance: #{@balance}"
	end
end


