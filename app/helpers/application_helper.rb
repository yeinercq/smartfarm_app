module ApplicationHelper 
#el modulo puede ser utilizado para empaquetar aquellas funciones de ayuda, 
#que pueden ser mezclados dentro de las clases de ruby usando 'include'. 
#Este helper se incluye automaticamente en todas las views del app
	
	#Returns the full title on a per-page basis
	def full_title(page_title = '')										#Method def, optional argument
		base_title = "SmartFarm"												#variable assigment
		if page_title.empty?														#boolean test or control flow
			base_title																		#implicit return
		else
			page_title + " | " + base_title								#else implicit return, String concatenation
		end
	end
end
