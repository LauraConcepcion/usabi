module ApplicationHelper
	def logo
		image_tag("logo.png", :alt => "Usabi - Logo")
	end
	
	def promocion
	  image_tag("promocion.png", :alt => "Web Mini 50 €", :class => "promocionimg" )
	end
	
	def title
	end
	def plantilla1
	  image_tag("plantilla1.png", :alt => "Web Básica: desde 170€", :class => "ejemploimg")
	end
	def plantilla2
    image_tag("plantilla2.png", :alt => "Web Estándar: desde 300€", :class => "ejemploimg")
  end
  def plantilla3
    image_tag("plantilla3.png", :alt => "Web Empresa: desde 700€", :class => "ejemploimg")
  end
  def plantilla4
    image_tag("plantilla4.png", :alt => "Tienda online: desde 600€", :class => "ejemploimg")
  end
  def plantilla5
    image_tag("plantilla5.png", :alt => "Web Personalizada", :class => "ejemploimg")
  end	
	
end
