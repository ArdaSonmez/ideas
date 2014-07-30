class GifsController < ApplicationController
  
  def index
    @movies = Ideas.all
  end
  
  def show
    @movie = Ideas.find_by(id: params['id'])
    render 'show'
  end
  
  def create
    @gif = Ideas.new
    @gif.name = params['name']
    @gif.explain = params['explain']
    @gif.save
    redirect_to "/movies"
  end
  
  def edit
    @movie = Ideas.find_by(id: params['id'])
    
  end
  
  def update
    @gif = Ideas.find_by(id: params['id'])
    @gif.name = params['name']
    @gif.explain = params['explain']
    @gif.save
    redirect_to "/movies"
  end
  def destroy
    @gif = Ideas.find_by(id: params['id'])
    @gif.destroy
    redirect_to "/movies"
  end
end