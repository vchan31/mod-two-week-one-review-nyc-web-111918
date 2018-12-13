class SeasController < ApplicationController
  #define your controller actions here


def index 
	@seas = Sea.all 
	render :index 
end 


def show 
	@sea = Sea.find(params[:id])
	render :show 
end 

def new 
	@sea = Sea.new
	render :new
end 


def create
@sea = Sea.create(sea_params)
redirect '/seas'
end 

def edit 
	@sea = Sea.find(params[:id])
    render :edit 
end 

def update
	patch "/seas/:id" do
    @sea = Sea.find(params[:id])
    # params.delete("_method")
    params[:has_mermaids] ||= false
    @sea.update(params)
    redirect "/seas/#{@sea.id}"
	end
  end






  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end


end
