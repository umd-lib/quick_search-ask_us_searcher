Rails.application.routes.draw do
  mount QuickSearchLibAnswersSearcher::Engine => "/quick_search-lib_answers_searcher"
end
