Rails.application.middleware.use OmniAuth::Builder do
  provider :underline,
           client_id: 'WP5cSTo4ndc4YOigVSNWOEPeQpVe4j-kSW50oPLy68E',
           client_secret: 'QYtZD8onH9DFCNOkR9GxHBHJ4GBqupGs8nLavJPah9Y',
           client_options: { site: 'http://localhost:3000' }
end

OmniAuth.config.allowed_request_methods = [:get]
