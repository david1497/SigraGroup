class WelcomeController < ApplicationController
  
  def index
  	@employees = Employee.all
  	@partners = Partner.all
  	@services = Service.all
  end

end
