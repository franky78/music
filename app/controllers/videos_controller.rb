class VideosController < ApplicationController
  def index
  	@videos = Video.all
  	  	@mp3s = Mp3.all
  end
  
  def show
    @video = Video.find_by_slug(params[:slug])
    
    if @video.nil?
      redirect_to root_path
    end
  	@videos = Video.all
  	@prods = Prod.all
  	@mp3s = Mp3.all
  end
end
