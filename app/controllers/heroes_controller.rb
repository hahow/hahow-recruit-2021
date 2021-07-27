class HeroesController < ApplicationController
  before_action :set_hero, only: [:show, :profile, :patch_profile]

  skip_before_action :verify_authenticity_token

  # GET /heroes
  def index
    @heroes = Hero.all

    render json: @heroes.map do |hero|
      hero.slice(:id, :name, :image)
    end
  end

  # GET /heroes/1
  def show
    render json: @hero.slice(:id, :name, :image)
  end

  def profile
    render json: @hero.slice(:str, :int, :agi, :luk)
  end

  def patch_profile
    p hero_profile_params
    if @hero.update(hero_profile_params)
      render plain: 'OK'
    else
      render @hero.errors
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_hero
    @hero = Hero.find(params[:id])
  end

  def hero_profile_params
    {
      str: params[:str],
      int: params[:int],
      agi: params[:agi],
      luk: params[:luk]
    }
  end
end
