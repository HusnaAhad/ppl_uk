class RegisterPage < GenericPage 
	
   def visit 
   	@browser.goto YAML_LINKS['homepage']
   end

end