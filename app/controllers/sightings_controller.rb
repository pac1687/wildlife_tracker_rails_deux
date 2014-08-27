class SightingsController < ApplicationController
  def new
    @regions = Region.all
    specie = Specie.find(params[:specie_id])
    @sighting = specie.sightings.new
    render('sightings/new.html.erb')
  end

  def create
    @specie = Specie.find(params[:specie_id])
    @sighting = Sighting.new(specie_id: params[:specie_id], longitude: params[:longitude], latitude: params[:latitude], region_id: params[:region_id])
    if @sighting.save
      render('sightings/success.html.erb')
    else
      @regions = Region.all
      render('sightings/new.html.erb')
    end
  end

  def edit
    @regions = Region.all
    @specie = Specie.find(params[:specie_id])
    @sighting = Sighting.find(params[:sighting_id])
    render('sightings/edit.html.erb')
  end

  def update
    @specie = Specie.find(params[:specie_id])
    @sighting = Sighting.find(params[:sighting_id])
    if @sighting.update(specie_id: params[:specie_id],
                        longitude: params[:longitude],
                        latitude: params[:latitude],
                        region_id: params[:region_id])
      render('sightings/success.html.erb')
    else
      render('sightings/edit.html.erb')
    end
  end

  def destroy
    @sighting = Sighting.find(params[:sighting_id])
    @sighting.destroy
    render('sightings/destroy.html.erb')
  end
end
