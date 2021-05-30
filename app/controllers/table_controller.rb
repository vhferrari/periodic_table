class TableController < ApplicationController
  def index
    file = File.read("db/data.json")
    @elements = JSON.parse(file)
  end

  def about
    render :about
  end
end
