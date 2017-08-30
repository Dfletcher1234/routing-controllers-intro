class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten,:kittens]


  def welcome
  @header = "Welcome page!"
  end

  def contest
  end

  def kitten
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def kittens
    set_kitten_url
  end

  def set_kitten_url
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
