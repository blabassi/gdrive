# Author: Hiroshi Ichikawa <http://gimite.net/>
# The license of this source is "New BSD Licence"

require "gdrive/basic_fetcher"


module GDrive

    class OAuth2Fetcher < BasicFetcher #:nodoc:

        def initialize(auth_token, proxy)
          super(proxy)
          @auth_token = auth_token
        end

      private

        def auth_header(auth)
          return {"Authorization" => "Bearer %s" % @auth_token}
        end

    end

end
