module ApplicationHelper
	def ignore_html(html)
		html.gsub(/<\/?.*?>/,"")
	end
end
