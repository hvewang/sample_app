module ApplicationHelper
	# Return a title on a per-page basis.
	def title
		base_title = "New Hope Internation Education Consulting"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
	
	def logo
		image_tag("greatwall.png", :alt => "New Hope International Education", :class => "round")
	end
	
	def lanImg
		image_tag("zh.png", :alt => "New Hope International Education", :class => "round") 
	end
end
