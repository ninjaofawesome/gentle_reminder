# require 'nokogiri'
# require 'open-uri'

class Scraper

  attr_reader :html

  def initialize(url)
    download = open(url)
    @html = Nokogiri::HTML(download.read)
  end

  def get_title
    data = html.search("a .track-name")
    courses = data.collect{|x| x.text}
  end

end

scraper = Scraper.new
(scraper.methods - Object.methods).sort
scraper.html.methods
scraper.get_title

data = html.search("a div")
//data["href"]

