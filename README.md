# quick_search-lib_answers_searcher

LibAnswers searcher for NCSU Quick Search

## Installation

Include the searcher gem in your Gemfile:

```
gem 'quick_search-lib_answers_searcher'
```

Run bundle install:

```
bundle install
```

Include in your Search Results page

```
<%= render_module(@lib_answers, 'lib_answers') %>
```

## Configuration

LibAnswers requires configuration such as an institution id. 
To set the configuration, create a "config/searchers/" directory in your 
application (the "searchers" subdirectory may need to be created), and copy 
the "config/lib_answers_config.yml" file in this gem into it. Follow the 
instructions in the file to configure the searcher.

Additional customizations can be done by editing the "config/locales/en.yml" 
file.