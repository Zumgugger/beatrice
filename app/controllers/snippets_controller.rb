class SnippetsController < ApplicationController

before_action :set_snippet, only: [:show, :edit, :update, :destroy]
before_action :admin
      
  def index
    @snippets = Snippet.all
  end #index


  def show
    
  end #show
  
  def new
    @snippet = Snippet.new
  end

  def edit
  end
  
  def create
    @snippet = Snippet.new

    respond_to do |format|
      if @snippet.save
        format.html { redirect_to snippets_path, notice: 'snippet was successfully created.' }
        format.json { render action: 'index', status: :created, location: @snippet }
      else
        format.html { render action: 'index' }
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @snippet.update(snippet_params)
        format.html { redirect_to @snippet, notice: 'snippet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'index' }
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snippets/1
  # DELETE /snippets/1.json
  def destroy
    @snippet.destroy
    respond_to do |format|
      format.html { redirect_to snippets_url }
      format.json { head :no_content }
    end
  end
  



private
    # Use callbacks to share common setup or constraints between actions.
    def set_snippet
      @snippet = Snippet.find(params[:id])
    end #set_snippet
    
    def snippet_params
      params.require(:snippet).permit(:name, :text, :id)
    end
end
