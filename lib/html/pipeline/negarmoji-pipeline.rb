# frozen_string_literal: true

require "html/pipeline"
require "html/pipeline/negarmoji-pipeline/version"

module HTML
  class Pipeline # :nodoc:
    class NegarMojiHtmlPipeline # :nodoc:
      # Negareh Emoji HTML Pipeline related filters for html-pipeline.
      # Implements new filters used by Negareh Emoji HTML Pipeline

      # Custom filter implementations
      autoload :NegarehEmojiFilter, "html/pipeline/negarmoji-pipeline/filter"

      def initialize(filters)
        @filters = filters.flatten.freeze
      end

      def pipeline
        HTML::Pipeline.new @filters
      end
    end
  end
end
