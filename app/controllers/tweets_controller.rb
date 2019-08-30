class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end

    def new
    end

    def create
        Tweet.create(text: params[:text],user_id: current_user.id)
        redirect_to "/"
    end
    
    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        redirect_to action: :index
    end
  
    def edit
        @tweet = Tweet.find(params[:id])
    end

    def update
        tweet = Tweet.find(params[:id])
        tweet.update(tweet_params)
        redirect_to action: :index
    end

    private
    def tweet_params
      params.permit(:text)
    end




end
