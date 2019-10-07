class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def edit
    @house = House.find(params[:id])
  end

  def create
    @house = House.create!(house_params)

    if @house.save
      redirect_to @house
    else
      render 'new'
    end
  end

  def update
    @house = House.find(params[:id])

    if @house.update(house_params)
      redirect_to @house
    else
      render 'edit'
    end
  end

  def destroy
  @house = House.find(params[:id])
  @house.destroy

  redirect_to houses_path
end

  private
  def house_params
    params.require(:house).permit(:description, :monthly_rent, :image, :owner,
                                  :num_rooms, :num_bathrooms, :pets)
  end
end
