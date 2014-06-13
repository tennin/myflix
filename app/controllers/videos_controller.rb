class VideosController < ApplicationController
  def home
    @videos = Video.all
    @categories = Category.all

  end

  def show
    #@videolink = 'http://www.youtube.com/watch?v=DMBUYCg51WQ'
    #%p= raw(youtube_embed(@videolink))
    @video = Video.find(params[:id])


  end

end