module ApplicationHelper

	def custom_bootstrap_flash
	  flash_messages = []
	  flash.each do |type, message|
	  	type = 'success' if type == 'success'
	    type = 'error'   if type == 'error'
	    
	    text = "<script>toastr.#{type}('#{message}');</script>"
	    logger.debug "Type: #{type}"

	    logger.debug "Message: #{message}"
	    flash_messages << text.html_safe if message
	  end
	  flash_messages.join("\n").html_safe
	end
end
