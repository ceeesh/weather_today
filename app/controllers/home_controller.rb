require 'net/http'

class HomeController < ApplicationController
    def index
       url = "https://api.openweathermap.org/data/2.5/weather?lat=33.7490&lon=-84.3880&units=imperial&appid=2cd6c916e89c89f156c3ee6332d5bd03"
       uri = URI(url)
       res = Net::HTTP.get_response(uri)
       @data = JSON.parse(res.body)
    end
end