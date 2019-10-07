class WelcomeController < ApplicationController
  
  def index
  	@employees = Employee.all
  	@partners = Partner.all
  	@services = Service.first(3)
  end

end
