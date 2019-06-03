# frozen_string_literal: true

module QuickSearch
  # QuickSearch searcher for LibAnswers
  class LibAnswersSearcher < QuickSearch::Searcher
    def search
      resp = @http.get(search_url)
      @response = JSON.parse(resp.body)
    end

    def results # rubocop:disable Metrics/MethodLength
      if results_list
        results_list
      else
        @results_list = []

        @response['search']['results'].each do |value|
          result = OpenStruct.new
          result.title = title(value)
          result.link = build_link(value)
          result.description = topics(value)
          result.item_format = 'web_page'
          @results_list << result
        end

        @results_list
      end
    end

    def search_url
      QuickSearch::Engine::LIB_ANSWERS_CONFIG['base_url'] +
        percent_encoded_raw_user_search_query +
        QuickSearch::Engine::LIB_ANSWERS_CONFIG['query_params']
    end

    def loaded_link
      QuickSearch::Engine::LIB_ANSWERS_CONFIG['loaded_link'] +
        percent_encoded_raw_user_search_query
    end

    # Returns the percent-encoded search query entered by the user, skipping
    # the default QuickSearch query filtering
    def percent_encoded_raw_user_search_query
      CGI.escape(@q)
    end

    def total
      @response['search']['numFound']
    end

    def topics(value)
      if value.key?('topics')
        value['topics'].join(', ')
      else
        ''
      end
    end

    def build_link(value)
      value['url']
    end

    def title(value)
      value['question']
    end
  end
end
