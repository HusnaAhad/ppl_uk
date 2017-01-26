class App 

  attr_accessor :browser
  
  @@browser ||= Watir::Browser.new ('chrome').to_sym
  @@browser.window.maximize
  @@browser.cookies.clear

  def self.method_missing(method_name, *arguments, &block)
    # Initializes App.page_object if it doesn't already exist
    @@pages ||= {}
    class_name = method_name.to_s.split('_').collect(&:capitalize).join
    @@pages[method_name] || @@pages[method_name] = Object.const_get(class_name).new(@@browser)
  end

  private_class_method :new  

end
