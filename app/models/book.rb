class Book < ActiveRecord::Base
  attr_accessible :title, :image_url, :summary, :amazon_url
  attr_reader :amazon_url

  require 'open-uri'
  def amazon_url=(amazon_url)
    doc = Nokogiri::HTML( open(amazon_url).read )

    self.image_url = doc.at('#prodImageCell > a > img')['src'].gsub(/_SL\d+/, '').gsub(/_AA\d+/, '_AA50')
    self.title = doc.at('#btAsinTitle').child.text
  end
end
