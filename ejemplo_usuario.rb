class User
	attr_accessor :name, :mail
	def initialize (attributes = {})
		@name = attributes[:name]
		@mail = attributes[:mail]
	end
	def formated_email
		"#{@name} < #{@mail}>"
	end
end