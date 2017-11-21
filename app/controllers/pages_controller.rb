class PagesController < ApplicationController

  def welcome
    @header = "This is the welcome page"
    render :welcome
  end

  def about
    @header = "This is the about page"
    render :about
  end

  def contest
    @header = "This is the contest page"
    render :contest
  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "https://lorempixel.com/#{requested_size}/#{requested_size}/cats"
    render :kitten
  end

end
