class PagesController < ApplicationController
  before_action :authenticate_user!
  # This will check that a user is logged in before taking you to the home page
  def home
      
  end
end
