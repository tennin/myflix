class VideosController < ApplicationController
  before_action :require_user

  def home
    @videos = Video.all
    @categories = Category.all
  end

  def show
    #@videolink = 'http://www.youtube.com/watch?v=DMBUYCg51WQ'
    #%p= raw(youtube_embed(@videolink))
    @video = Video.find(params[:id])
  end


  def search

    @search_results = Video.search_by_title(params[:search_term])
  end
end