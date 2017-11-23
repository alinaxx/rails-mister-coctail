class DosesController < ApplicationController

def new
  @cocktail = Coctail.find(params[:cocktail_id])
  @dose = Dose.new
end

def create
end

def destroy
end

end
