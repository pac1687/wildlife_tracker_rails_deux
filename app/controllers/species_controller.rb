class SpeciesController < ApplicationController

  def index
    @species = Specie.all
    @specie = Specie.new
    render('species/index.html.erb')
  end

  def show
    @specie = Specie.find(params[:id])
    render('species/show.html.erb')
  end

  def create
    @specie = Specie.new( name: params[:name])
    if @specie.save
      render('species/success.html.erb')
    else
      render('species/index.html.erb')
    end
  end

  def edit
    @specie = Specie.find(params[:id])
    render('species/edit.html.erb')
  end

  def update
    @specie = Specie.find(params[:id])
    if @specie.update( name: params[:name])
      render('species/success.html.erb')
    else
      render('species/edit.html.erb')
    end
  end

  def destroy
    @specie = Specie.find(params[:id])
    @specie.destroy
    render('species/destroy.html.erb')
  end
end
