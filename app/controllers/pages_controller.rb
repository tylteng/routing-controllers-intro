class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

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
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "https://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
end
