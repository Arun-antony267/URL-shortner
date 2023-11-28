class WebhookController < ApplicationController

    def index
      
      shortened_url = params[:shortened_url]
       @user = ShortUrl.find_by(shortened_url: shortened_url)
       @rec = @user.original_url
        redirect_to controller: 'home', action: 'show' 

    end

    def redirect
      # Retrieve the short URL parameter
      # http://127.0.0.1:3000/redirect/?short_url=https://test.tin.ee/d1ff4ef
      # https://rails-test-deploy-url-shortner.onrender.com/redirect/?short_url=https://test.tin.ee/b5b2ab8
      short_url = params[:short_url]
      user = ShortUrl.find_by(shortened_url: short_url )
      url_og = user.original_url
      # Your logic to handle the received short URL goes here
      # For demonstration purposes, let's just render it as JSON
      # render json: { received_short_url: url_og }
      redirect_to url_og, allow_other_host: true
    end
    
  end
