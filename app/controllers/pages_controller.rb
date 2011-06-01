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
  def paquetesweb
    @title = "Paquetes Web"
  end
  def serviciosweb
    @title = "Servicios Web"
  end
    def aplicacionesweb
  	@title = "aplicacionesweb"
  end
end
