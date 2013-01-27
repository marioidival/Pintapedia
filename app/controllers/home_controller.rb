class HomeController < ApplicationController
  before_filter :require_login_on_face, :only => [:index]
  def index
    @word = Word.new
    @girias = Word.find(:all, :order => "created_at DESC", :limit => 5)
  end
  
  def show
    @words = Word.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @words }
    end
  end

end
