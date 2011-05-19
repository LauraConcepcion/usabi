class User < ActiveRecord::Base
	#El método attr_accesible indica si un atributo puede ser modificado o no
	attr_accessible :name, :email
	#Indicamos una expresión regular para definir el formato de un mail
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i	
	#Método para validar los argumentos
	#En este caso comprobamos que existe
	validates :name, 	:presence 	=> true,
						:length 	=> { :maximum => 50}
	validates :email, 	:presence	=> true,
						:format		=> { :with => email_regex},
						:uniqueness	=> { :case_sensitive => false}
						#:uniqueness	=> true
						
end
