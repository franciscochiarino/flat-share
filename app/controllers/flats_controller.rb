class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      flash[:notice] = 'Your flat has benn saved!'
      redirect_to @flat
    else
      render :new
    end
  end

  private

  def flat_params
    params.require(:flat)
      .permit(:kind,
        :space,
        :address,
        :address_description,
        :city,
        :zip,
        :country,
        :guests,
        :beds,
        :bedrooms,
        :bathrooms,
        :standouts,
        :favorites,
        :safety,
        :headline,
        :highlights,
        :description
      )
  end
end