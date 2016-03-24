require 'fb/feed'

RSpec.describe FB::Feed do
  subject(:fb_feed) { FB::Feed.instance }
  describe '#app' do
    it 'creates a ::Koala::Facebook::OAuth instance' do
      key = 'my-key'
      secret = 'my-secret'
      expect(::Koala::Facebook::OAuth).to receive(:new).with(key, secret)
      fb_feed.app(key, secret)
    end
  end

  describe "#get_feed" do
    it 'calls get_connections on a ::Koala::Facebook::API instance' do
      allow(FB::Feed.instance).to receive(:access_token).and_return('12345')
      expect_any_instance_of(::Koala::Facebook::API)
        .to receive(:get_connections).with('my-feed', 'feed', {})
      fb_feed.get_feed('my-feed')
    end
  end
end
