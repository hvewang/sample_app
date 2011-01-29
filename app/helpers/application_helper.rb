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
	
	def langImg
		image_tag("#{t('langimg')}", :alt => "New Hope International Education", :class => "round") 
	end
	
	def language_selector
		puts "locale is: <" + I18n.locale.to_s + ">"
		
		if I18n.locale == :en
			link_to langImg, url_for(:locale => 'zh-cn')
		else
			link_to langImg, url_for(:locale => 'en')
		end
	end
end
