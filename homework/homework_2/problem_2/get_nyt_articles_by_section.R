library(httr)
library(plyr)
library(XML)

# sign up for the article search API here
# http://developer.nytimes.com/docs/read/article_search_api_v2
# and enter your key below
API_KEY <- ''

NYT_ARTICLE_SEARCH <- 'http://api.nytimes.com/svc/search/v2/articlesearch.json'

# function to decode html entities
# stolen from http://stackoverflow.com/a/5060203
html2txt <- function(str) {
  txt <- xpathApply(htmlParse(str, asText=TRUE),
             "//body//text()",
             xmlValue)[[1]]
  txt <- gsub('\n','', txt)
}

# function to get articles by section from the NYT api
get_nyt_articles_by_section <- function(section, num_articles=10) {
  # number of API pages to fetch
  num_pages <- ceiling(num_articles / 10.0)

  articles <- data.frame()
  for (page in 1:num_pages) {

    print(sprintf('%s section: page %d of %d', section, page, num_pages))

    # construct query parameters
    query <- list('api-key'= API_KEY,
                  sort='newest',
                  fq=sprintf('section_name:%s', section),
                  page=page)

    # fetch results
    response <- GET(NYT_ARTICLE_SEARCH, query=query)
    result <- content(response)

    # extract section, date, url, and snippet for each result on the page
    page <- ldply(result$response$docs, function(doc) {
      data.frame(section=doc$section_name,
                 date=doc$pub_date,
                 url=gsub('\\/','/', doc$web_url),
                 snippet=html2txt(doc$snippet))
    })

    # append to final data frame
    articles <- rbind(articles, page)
  }

  # return all results
  articles
}

# get 1000 business articles
business <- get_nyt_articles_by_section("Business", 1000)
write.table(business, 'business.tsv', sep='\t')

# get 1000 world articles
world <- get_nyt_articles_by_section("World", 1000)
write.table(world, 'world.tsv', sep='\t')
