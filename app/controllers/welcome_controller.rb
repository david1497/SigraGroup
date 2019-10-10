class WelcomeController < ApplicationController
  
  def index
  	@employees = Employee.all
  	@partners = Partner.all
  	@services = Service.first(3)
    @article_mission = Article.where(article_type: "mission").last
    @article_problems = Article.where(article_type: "problems").last
    @article_services = Article.where(article_type: "services").last
    @article_team = Article.where(article_type: "team").last
    @article_clients = Article.where(article_type: "clients").last
  end

end
