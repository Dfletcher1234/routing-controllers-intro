class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten,:kittens]


  def welcome
  @header = "Welcome page!"
  end

  def contest
    flash[:notice] = "sorry, the contest has ended"
    redirect_to welcome_path
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

  def secrets
    if params[:magic_word] == "cats"

    else
      flash[:notice] = "WRONG"
      # redirect_to '/welcome'
      redirect_to welcome_path
    end

  end







end
