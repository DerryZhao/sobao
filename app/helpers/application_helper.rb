module ApplicationHelper
	#忽略html标签
	def ignore_html(html)
		html.gsub(/<\/?.*?>/,"")
	end
	#menu_helper
	def menu_item(code)
	   str = ""
   	   arrs = [ ["首页", "home", root_url()], ["文章", "articles", root_url()], 
                ["关于", "about", root_url()],["联系", "contact", root_url(:sp=>1)],
                ["管理", "action", root_url()]]
	   arrs.each do |a|
	      if a[1]==(code||"home")
	         str << (link_to a[0], a[2], :title=>sanitize(a[0], :tags=>[]), :class=>"blog-nav-item active")
	      else
	         str << (link_to a[0], a[2], :title=>sanitize(a[0], :tags=>[]),:class=>"blog-nav-item")
	      end
	   end
       str.html_safe
	end
	#title_for_page
	def show_title(title='')
	  title.blank? ? '好博文' : title
	end
end
