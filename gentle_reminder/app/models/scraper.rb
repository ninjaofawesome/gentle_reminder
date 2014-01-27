require 'nokogiri'
require 'open-uri'

class Scraper

  attr_reader :html

  def initialize(url)
    download = open(url)
    @html = Nokogiri::HTML(download.at_css('#ajax').text)
  end

  def get_title
    data = html.search("a .track-name")
    percents = html.css('.meter-label')
    courses = data.collect{|x| x.text}
  end

end

# scraper = Scraper.new
# (scraper.methods - Object.methods).sort
# scraper.html.methods
# scraper.get_title

# data = html.search("a div")
# data["href"]

