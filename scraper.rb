require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.wikipedia_xpath( 
  url: 'https://en.wikipedia.org/wiki/Parliament_of_Nauru',
  after: '//h2/span[@id="Current_MPs"]',
  before: '//h2/span[@id="Speaker"]',
  xpath: '//table//tr//td[position()=last()-3]//a[not(@class="new")]/@title',
) 

EveryPolitician::Wikidata.scrape_wikidata(names: { en: names }, output: false)
