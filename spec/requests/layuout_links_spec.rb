require 'spec_helper'

describe "LayuoutLinks" do

#Comprobamos que existen las páginas que deberían
	it "Deberíamos encontrar la página Inicio '/'" do 
		get '/'
		response.should have_selector('title', :content=>"Inicio")
	end
	it "Deberíamos encontrar la página Servicios '/servicios'" do 
		get '/servicios'
		response.should have_selector('title', :content=>"Servicios")
	end
	it "Deberíamos encontrar la página Portafolio '/portafolio'" do 
		get '/portafolio'
		response.should have_selector('title', :content=>"Portafolio")
	end
	it "Deberíamos encontrar la página Contacto '/contacto'" do 
		get '/contacto'
		response.should have_selector('title', :content=>"Contacto")
	end
	
	it "Deberíamos encontrar la página signup '/signup'" do 
		get '/signup'
		response.should have_selector('title', :content=>"Sign up")
	end
#Comprobamos que al hacer click se hace correctamente y que los link están bien definidos
	it "should have the right links on the layout" do		visit root_path 
		click_link "Servicios" 
		response.should have_selector('title', :content => "Servicios") 
		click_link "Portafolio" 
		response.should have_selector('title', :content => "Portafolio") 
		click_link "Contacto" 
		response.should have_selector('title', :content => "Contacto") 
		click_link "Inicio" 
		response.should have_selector('title', :content => "Inicio") 
		click_link "Sign up now!" 
		response.should have_selector('title', :content => "Sign up")	end
end
