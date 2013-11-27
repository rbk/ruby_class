#exceptionalBankAccount.rb

class InsufficientFundsError < RuntimeError
	def initialize id, amount, balance 
		@id = id
		@amount = amount
		@balance = balance
	end

	def to_s
		"Account #{@id} did not have funds (Balance: #{@balance}) to withdraw #{@amount}"
	end

end	

class NegativeAmountError < RuntimeError

	def initialize action, id
		@action = action
		@id = id
	end

	def to_s
		"You cannot #{@action} a negative amount for account #{@id}"
	end


end