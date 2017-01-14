class StaticPagesController < ApplicationController
before_action :store_location

  def home
      @snippets=Snippet.all
  end

  def about
        @snippets=Snippet.all
  end

  def contact
        @snippets=Snippet.all
  end
    
  def atelier
      @snippets=Snippet.all
  end
    
end

