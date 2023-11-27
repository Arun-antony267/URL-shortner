class RedirectController < ApplicationController

    def index
      
      shortened_url = params[:shortened_url]
       @user = ShortUrl.find_by(shortened_url: shortened_url)
       @rec = @user.original_url
        redirect_to controller: 'home', action: 'show' 

    end
  end
