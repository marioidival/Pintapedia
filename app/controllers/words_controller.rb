class WordsController < ApplicationController
  def index
    @words = Word.paginate(:page => params[:page], :per_page => 5).order('id DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @words }
    end
  end

  # GET /words/1
  # GET /words/1.json
  def show
    @words = Word.find(params[:id])
   

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @words }
    end
  end

  # GET /words/new
  # GET /words/new.json
  def new
    @word = Word.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @words }
      format.js
    end
  end

  # GET /words/1/edit
  def edit
    @words = Word.find(params[:id])
  end

  # POST /words
  # POST /words.json
  def create
    @word = Word.new(params[:word])

    respond_to do |format|
      if @word.save
        format.html { redirect_to root_path, alert: 'Word was successfully created.' }
        format.json { render json: root_path, status: :created, location: @word }
      else
        format.html { render action: "new" }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /words/1
  # PUT /words/1.json
  def update
    @words = Word.find(params[:id])

    respond_to do |format|
      if @words.update_attributes(params[:word])
        format.html { redirect_to @words, notice: 'Word was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @words.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /words/1
  # DELETE /words/1.json
  def destroy
    @words = Word.find(params[:id])
    @words.destroy

    respond_to do |format|
      format.html { redirect_to words_url }
      format.json { head :no_content }
    end
  end
end
