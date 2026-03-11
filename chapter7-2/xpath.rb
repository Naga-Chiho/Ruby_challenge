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

contents.xpath("//img").each do |img|
  src = img.attribute('src').value.to_s
  src = (url + src).to_s
  if src.end_with?("img_sightseeing.jpg")
    File.write('./img_sightseeing.jpg', URI.open(src).read)
    puts "ダウンロードが完了しました."
  end
end
