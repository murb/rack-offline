module Rack
  class Offline
    class Config
      def initialize(root, &block)
        @cache = []
        @network = []
        @fallback = {}
        @settings = []
        @root = root
        instance_eval(&block) if block_given?
      end

      def cache(*names)
        @cache.concat(names)
      end

      def network(*names)
        @network.concat(names)
      end

      def fallback(hash = {})
        @fallback.merge!(hash)
      end
     
      def settings(*options)
        @settings.concat(options)
      end

      def root
        @root
      end
    end
  end
end
