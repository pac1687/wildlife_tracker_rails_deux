class RegionsController < ApplicationController
  def create
    @region = Region.new(name: params[:name])
    if @region.save
      render('regions/success.html.erb')
    else
      render('regions/new.html.erb')
    end
  end

  def new
    @region = Region.new
    render('regions/new.html.erb')
  end

  def show
    @region = Region.find(params[:id])
    render('regions/show.html.erb')
  end
end
