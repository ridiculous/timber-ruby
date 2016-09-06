require File.join(File.dirname(__FILE__), "heroku_logplex", "hybrid_formatter")

module Timber
  module LogDevices
    class HerokuLogplex < IO
      def initialize(_options = {})
        super(STDOUT)
        if formatter.is_a?(IO::HybridFormatter)
          formatter.extend HybridFormatter
        end
      end
    end
  end
end