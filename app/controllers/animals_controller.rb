class AnimalsController < ApplicationController
  VERSION = 'v1'

  def index
    url = "http://localhost:3000/api/#{VERSION}/animals.json"
    @animals = Unirest.get(url).body
  end

  def show
    url = "http://localhost:3000/api/#{VERSION}/animals/#{params[:id]}.json"
    @animal = Unirest.get(url).body
  end

  def create
    url = "http://localhost:3000/api/#{VERSION}/animals.json"
    Unirest.post(url)
  end
end
