require_relative '../headless-chrome-browser/headless_chrome_browser'

# setup headless selenium / chrome 
headless_browser_master = HeadlessChromeBrowser.new
# init new browser window
browser = headless_browser_master.new_browser
# visit google
browser.goto('http://www.google.com')
# scrape content with nokogiri
html_content = Nokogiri::HTML(browser.html)
title = html_content.css("title").text
puts "This website's title is: #{title}"
# close browser
browser.close
puts 'Success!'