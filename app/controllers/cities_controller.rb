class CitiesController < ApplicationController

  def show
    @cities = City.find(params[:id])
  end

  def index
    @cities =City.all
  end

  def new
    @city=City.new
  end

  def create
    city =City.new(city_params)
    if city.save
      redirect_to cities_path
    else
      render 'new'
    end
  end

  def destroy
    city = City.find_by(id: params[:id])
    if  city.destroy
      flash[:success] = "Successfully Destroyed..."
    else
        flash[:success] = "An error has been committed"
    end
    binding.pry
    redirect_to cities_path

  end
  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    if @city.update_attributes(city_params)
      # Actualiza los datos.
    else
      render 'edit'
    end
  end

  private

  def city_params
    params.require(:city).permit(:name,:country_name,:time_zone)
  end
end
