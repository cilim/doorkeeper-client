module OmniAuth
  module Strategies
    class Underline < OmniAuth::Strategies::OAuth2
      def client
        options.client_options.authorize_url = File.join('http://localhost:3002', 'logins/new')
        super
      end

      uid do
        raw_info['id']
      end

      info do
        {
          email: raw_info['email']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/oauth/credentials/me').parsed
      end
    end
  end
end
