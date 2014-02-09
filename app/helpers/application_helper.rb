module ApplicationHelper

	def resource_name
		:member
	end

	def resource
		@resource ||= Member.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:member]
	end

	def markdown(content)
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true, fenced_code_blocks: true)
    @markdown.render(content).html_safe
  end
  

	def is_active?(link_path)
		if current_page?(link_path)
			"active"
		else
			""
		end
	end

	

end
