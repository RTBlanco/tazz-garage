class ApplicationController < ActionController::Base

  def index
    render 'application/index/index'
  end

  def about
    render 'application/about/about'
  end
end
