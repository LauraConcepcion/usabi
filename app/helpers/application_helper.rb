module ApplicationHelper
	def logo
		image_tag("logo.png", :alt => "Usabi - Logo")
	end
	
	def promocion
	  image_tag("promocion.png", :alt => "Web Mini 50 €", :class => "promocionimg" )
	end
	
	def title
	end
end
