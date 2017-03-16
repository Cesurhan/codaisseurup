class PagesController < ApplicationController
  def home
    @events = Event.all
    @photos = Photo.all
   end

  def about; end
end
