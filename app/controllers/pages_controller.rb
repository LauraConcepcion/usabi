class PagesController < ApplicationController
  def inicio
  	@title = "Inicio"
  end
  def contacto
    @title = "Contacto"
  end
  def servicios
  	@title = "Servicios"
  end
    def portafolio
  	@title = "Portafolio"
  end
end
