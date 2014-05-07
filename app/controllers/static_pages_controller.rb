class StaticPagesController < ApplicationController
  def home
    render "static_pages/agreement"
  end

  def agreement
  end

  def help
  end
end
