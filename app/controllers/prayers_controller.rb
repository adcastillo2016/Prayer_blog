class PrayersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
	before_action :find_post, only: [:show, :edit, :update, :destroy]
  def index
  	@prayer = Prayer.all.order("created_at DESC")
  end

  def new
  	@prayer = Prayer.new
  end
  def create
  	@prayer = Prayer.new(prayer_params)

  	if @prayer.save
  		redirect_to @prayer
  	else
  		render 'new'
  	end
  end

  def show
  	
  end

  def edit
  	
  end

  def update

  	if @prayer.update(prayer_params)
  		redirect_to @prayer
  	else
  		render 'edit'
  	end
  	
  end

  def destroy
  		@prayer.destroy

  	redirect_to root_path
  	
  end

  private

  def find_post
  		@prayer = Prayer.find(params[:id])
  	end

  def prayer_params
  	params.require(:prayer).permit(:title, :message)
  end
end
