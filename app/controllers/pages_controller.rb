class PagesController < ApplicationController


def welcome
@header = "Welcome page!"
end

def contest
end

def kitten
requested_size = params[:size]
@kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
end



end
