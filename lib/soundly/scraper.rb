class Soundly::Scraper
	@@trending = nil
  def get_page
    @@trending = Nokogiri::HTML(open("https://soundcloud.com/charts/top"))
		binding.pry
  end

  def scrape_table
    @@trending.css(".chartTracks lazyLoadingList").each do |row|

    end
  end
end
