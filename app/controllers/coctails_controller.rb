class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktails = Cocktail.all
  end

  def show
  end

  def create
    @cocktails = Cocktail.new(coctail_params)
    respond_to do |format|
      if @cocktail.save
        format.html { redirect_to @cocktail, notice: 'Cocktail was successfully created.' }
        format.json { render :show, status: :created, location: @cocktail }
      else
        format.html { render :new }
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cocktail.destroy
    respond_to do |format|
      format.html { redirect_to coctails_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
