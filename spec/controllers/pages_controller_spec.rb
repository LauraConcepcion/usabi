require 'spec_helper'

describe PagesController do
  render_views
  before(:each) do
  #Definimos el título de cada página que será el mismo
  #Ruby on Rails Tutorial Sample App
  #@base_title= "Ruby on Rails Tutorial Sample App |"
  
  end
  describe "GET 'inicio'" do
    it "should be successful" do
      get 'inicio'
      response.should be_success
    end
    it "shoul have the right title" do
  		get 'inicio'
  		response.should have_selector("title",
  					#:content => @base_title + "Home")
  					:content => "Inicio")

  	end
  end
  
  describe "GET 'servicios'" do
    it "should be successful" do
      get 'servicios'
      response.should be_success
    end
    it "shoul have the right title" do
  		get 'servicios'
  		response.should have_selector("title",
  					:content => "Servicios")
  	end
  end
  
  describe "GET 'portafolio'" do
    it "should be successful" do
      get 'portafolio'
      response.should be_success
    end
  
  	it "shoul have the right title" do
  		get 'portafolio'
  		response.should have_selector("title",
  					:content =>  "Portafolio")
  	end
  end
  
  describe "Get 'contacto'" do
  	it "should be successful" do
  		get 'contacto'
  		response.should be_success
  	end
  	
  	it "have the right title" do
  		get 'contacto'
  		response.should have_selector("title",
  					:content => "Contacto")
  	end
  end
end
