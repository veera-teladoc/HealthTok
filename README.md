# HealthTok

## How the app works

Service that connects with Social Media to search social media posts of users by specific params (ex. location, demographics). Then it analyzes found posts and extract keywords, that may be used to match appropriate consultation for a user. And then CompainGenerator delivers a personalized campaign message to a social media user.

## Repo structure

* KeywordService - service that contains NLP library to extract kewords from text
* SocialCrawlerService - service that contains Tweetkit client to connect with Twitter API and search social_media posts by specific params
* CapmaignMessagerService - service that delivers targeted capmaign to social media users
