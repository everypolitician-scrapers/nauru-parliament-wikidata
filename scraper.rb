require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/nauru-parliament', column: 'wikiname')
cat = WikiData::Category.new( 'Category:Members_of_the_Parliament_of_Nauru', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: names | cat }, output: false)
