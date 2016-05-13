require 'hanami/helpers'
require 'hanami/assets'

module Web
  class Application < Hanami::Application
    configure do

      # Define the root path of this application.
      # All paths specified in this configuration are relative to path below.
      root __dir__

      # Relative load paths where this application will recursively load the code.
      # When you add new directories, remember to add them here.
      #
      load_paths << [
        'controllers',
        'views'
      ]

      # Handle exceptions with HTTP statuses (true) or don't catch them (false).
      # Defaults to true.
      # See: http://www.rubydoc.info/gems/hanami-controller/#Exceptions_management
      #
      # handle_exceptions true

      # HTTP
      # Routes definitions for this application
      # See: http://www.rubydoc.info/gems/hanami-router#Usage
      routes 'config/routes'

      # URI scheme used by the routing system to generate absolute URLs
      # Defaults to "http"
      # scheme 'https'

      # host 'example.org'
      # port 443

      # Enable cookies
      # Argument: boolean to toggle the feature
      #           A Hash with options
      # Options: :domain   - The domain (String - nil by default, not required)
      #          :path     - Restrict cookies to a relative URI (String - nil by default)
      #          :max_age  - Cookies expiration expressed in seconds (Integer - nil by default)
      #          :secure   - Restrict cookies to secure connections
      #                      (Boolean - Automatically set on true if currenlty using a secure connection)
      #                      See #scheme and #ssl?
      #          :httponly - Prevent JavaScript access (Boolean - true by default)
      #
      # cookies true

      # Enable sessions
      # Argument: Symbol the Rack session adapter
      #           A Hash with options
      # See: http://www.rubydoc.info/gems/rack/Rack/Session/Cookie
      # sessions :cookie, secret: ENV['WEB_SESSIONS_SECRET']

      # Configure Rack middleware for this application
      # middleware.use Rack::Protection

      # HTTP Body parsers
      # Parse non GET responses body for a specific mime type
      # Argument: Symbol, which represent the format of the mime type (only `:json` is supported)
      #           Object, the parser
      #
      # body_parsers :json

      # When it's true and the router receives a non-encrypted request (http),
      # it redirects to the secure equivalent resource (https). Default disabled.
      #
      # force_ssl true


      layout :application # It will load Web::Views::ApplicationLayout
      templates 'templates'

      assets do
        # compile false
        javascript_compressor :builtin

        stylesheet_compressor :builtin

        # Specify sources for assets
        #
        sources << [
          'assets'
        ]
      end

      ##
      # SECURITY
      security.x_frame_options "DENY"
      security.content_security_policy "default-src 'none'; script-src 'self'; connect-src 'self'; img-src 'self'; style-src 'self'; font-src 'self';"

      # See: http://www.rubydoc.info/gems/hanami-controller#Configuration
      controller.prepare do
        # include MyAuthentication # included in all the actions
        # before :authenticate!    # run an authentication before callback
      end

      # Configure the code that will yield each time Web::View is included
      # This is useful for sharing common functionality
      #
      # See: http://www.rubydoc.info/gems/hanami-view#Configuration
      view.prepare do
        include Hanami::Helpers
        include Web::Assets::Helpers
      end
    end

    configure :development do
      # Don't handle exceptions, render the stack trace
      handle_exceptions false
    end

    configure :test do
      # Don't handle exceptions, render the stack trace
      handle_exceptions false
    end

    configure :production do
      # scheme 'https'
      # host   'example.org'
      # port   443

      assets do
        # Don't compile static assets in production mode (eg. Sass, ES6)
        #
        # See: http://www.rubydoc.info/gems/hanami-assets#Configuration
        compile false

        # Use digest file name for asset paths
        #
        # See: http://hanamirb.org/guides/assets/digest
        digest  true

        # Content Delivery Network (CDN)
        #
        # See: http://hanamirb.org/guides/assets/content-delivery-network
        #
        # scheme 'https'
        # host   'cdn.example.org'
        # port   443
      end
    end
  end
end
