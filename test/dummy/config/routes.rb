Rails.application.routes.draw do
  mount QuickSearch::LibAnswersSearcher::Engine => "/quick_search-lib_answers_searcher"
end
