class CalendarController < ApplicationController
  # GET /albums
  # GET /albums.json
  def index
    @shows = Show.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @albums }
    end
  end

end
 
