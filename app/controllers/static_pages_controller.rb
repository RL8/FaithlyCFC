class StaticPagesController < ApplicationController
	
	before_action :authenticate_user!, :except => [:welcome]

  def welcome
  end

  def feed
  end
end
