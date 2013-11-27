# test_bankaccounts

require_relative "BankAccount"

accounts = []
5.times do |c|
	a = BankAccount.new
	a.deposit( c * 10 )
	accounts.push( a )
end 

accounts.each {|a| puts a}

puts "*" * 30

#accounts.each do |account|
#	case
#		when account.balance < 0 then puts "overdrawn"
#		when account.balance == 0 then puts "inactive"
#		when account.balance > 0 then puts "good standing"
#	end
#end

class AccountStatus
	def initialize( &block )
		@check_block = block
	end
	
	# called by the case/when
	def ===( account )
		@check_block.call( account )
	end
end

overdrawn = AccountStatus.new do |account|
	account.balance < 0
end

inactive = AccountStatus.new do |account|
	account.balance == 0
end

good_standing = AccountStatus.new do |account|
	account.balance > 0
end

accounts.each do |account|
	case account
		when overdrawn then puts "overdrawn"
		when inactive then puts "inactive"
		when good_standing then puts "good standing"
	end
end

puts "*" * 30

for acct in accounts
	acct.deposit( 1 )
	puts acct
end

puts "*" * 30

accounts.each {|account| puts account}













