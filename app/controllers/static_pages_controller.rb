class StaticPagesController < ApplicationController

def home

end

def about
  render :layout => 'about'
end

end
