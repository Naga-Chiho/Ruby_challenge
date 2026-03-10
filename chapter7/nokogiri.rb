require "open-uri"
require "nokogiri"

url = "https://www.kurobe-dam.com/"
charset = nil

html = open(url) do |page|
  charset = page.charset
  page.read
end

# Nokogiri で切り分け
contents = Nokogiri::HTML.parse(html,nil,charset)

contents.css("img").each do |img|
  puts url + img.attribute('src').value.to_s
end
