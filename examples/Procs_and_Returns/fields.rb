# Fields

class Field
	attr_accessor :value
	
	def initialize(&proc)
		@proc = proc
	end
	
	def is_valid?
		if @proc.call( @value )
			true
		else
			false
		end
	end
end

valid_name = Proc.new {|value| value =~ /[a-z]/}

fn_field = Field.new(&valid_name)
fn_field.value = "6"

puts "is first name valid: #{fn_field.is_valid?}"

ln_field = Field.new(&valid_name)
ln_field.value = "Firecracker"

puts "is last name valid: #{ln_field.is_valid?}"

pn_field = Field.new {|value| value =~ /\d{3}-\d{3}-\d{4}/}
pn_field.value = "918-595-000"

puts "is phone number valid: #{pn_field.is_valid?}"

pw_field = Field.new {|value| value.size >= 6}
pw_field.value = "password"

puts "is password valid: #{pw_field.is_valid?}"





