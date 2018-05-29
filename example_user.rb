class User
	#este es una clase de prueba para verificar funcionalidad en la consola (rails console)
	attr_accessor :first, :last, :email

	def initialize(attributes = {})
		@first 	= attributes[:first]
		@last 	= attributes[:last]
		@email 	= attributes[:email]
	end

	def full_name
		"#{@first} #{@last}"
	end

	def formatted_email
		"#{@first} #{@last} <#{@email}>"
	end

	def alphabetical_name
		"#{@last}, #{@first}"
	end
end