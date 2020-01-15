# frozen_string_literal: true

require 'test_helper'

module QuickSearch
  class LibAnswersSearcher
    # LibAnswersSearch tests
    class Test < ActiveSupport::TestCase
      test 'truth' do
        assert_kind_of Module, QuickSearch::LibAnswersSearcher
      end
    end
  end
end
