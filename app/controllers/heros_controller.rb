class HerosController < ApplicationController
  before_action :set_hero, only: [:show, :edit, :update, :destroy]

  # GET /heros
  def index
    @heros = Hero.all
  end

  # GET /heros/1
  def show
  end

  # GET /heros/new
  def new
    @hero = Hero.new
  end

  # GET /heros/1/edit
  def edit
  end

  # POST /heros
  def create
    @hero = Hero.new(hero_params)

    if @hero.save
      redirect_to @hero, notice: 'Hero was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /heros/1
  def update
    if @hero.update(hero_params)
      redirect_to @hero, notice: 'Hero was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /heros/1
  def destroy
    @hero.destroy
    redirect_to heros_url, notice: 'Hero was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hero
      @hero = Hero.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hero_params
      params.require(:hero).permit(:name, :image, :str, :int, :agi, :luk)
    end
end
