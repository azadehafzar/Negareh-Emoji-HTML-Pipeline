# frozen_string_literal: true

require "html/pipeline"
require "html/pipeline/negarmoji-pipeline/version"

module HTML
  class Pipeline
    class NegarMojiHtmlPipeline
      # Negareh Emoji HTML Pipeline related filters for html-pipeline.
      # Implements new filters used by Negareh Emoji HTML Pipeline

      # Custom filter implementations
      autoload :NegarehEmojiFilter, "negarmoji-pipeline/filter"

      def initialize(filters)
        @filters = filters.flatten.freeze
      end

      def pipeline
        HTML::Pipeline.new @filters
      end
    end
  end
end
