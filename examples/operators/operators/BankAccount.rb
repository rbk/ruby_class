# BankAccount

class BankAccount
	@@id = 0
	
	attr_reader :balance
	
	def initialize
		@id = @@id = (@@id + 1)
		@balance = -20
	end
	
	def deposit( amount )
		@balance += amount if amount > 0
	end
	
	def withdraw( amount )
		@balance -= amount if amount > 0 and amount <= @balance
	end
	
	def to_s
		"Account #{@id} - Balance: #{@balance}"
	end
end


