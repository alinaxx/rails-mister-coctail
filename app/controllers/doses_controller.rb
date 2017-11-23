class DosesController < ApplicationController

def new
  @cocktail = Coctail.find(params[:cocktail_id])
  @dose = Dose.new
end

def create
  @dose = dose.new(dose_params)
  @dose.cocktail = cocktail.find(params[:cocktail_id])
  if
    @dose.save
    redirect_to cocktail_path(@dose.cocktail)
  else
    render :new
  end
end

private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
