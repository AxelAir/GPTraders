module ApplicationHelper

	def page_full_title(page_title)
		base_title = "GPTraders"
		(page_title.empty?) ? base_title : "#{base_title} - #{page_title}"
	end
end
