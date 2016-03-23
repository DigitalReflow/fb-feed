require 'fb/feed/version'
require 'koala'
require 'singleton'

module FB
  class Feed
    attr_accessor :app, :app_id, :app_secret, :facebook_oauth
    include Singleton

    def app(app_id, app_secret)
      @app_id = app_id
      @app_secret = app_secret
      @facebook_oauth = ::Koala::Facebook::OAuth.new(@app_id, @app_secret)
    end

    def get_feed(name, options={})
      facebook_api = ::Koala::Facebook::API.new(access_token)
      facebook_api.get_connections(name, "feed", options)
    end

    def access_token
      facebook_oauth.get_app_access_token
    end
  end
end
