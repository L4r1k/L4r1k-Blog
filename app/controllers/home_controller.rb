class HomeController < ApplicationController
  def index
    @repos = Repository.all.first(3)
  end
end
