class TableController < ApplicationController
  def index
    file = File.read("db/data.json")
    @elements = JSON.parse(file)
  end

  def about
    file = File.read("db/data.json")
    elements = JSON.parse(file)
    @el = elements[params[:name].downcase]
  end
end
