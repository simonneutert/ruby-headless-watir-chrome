# Headless Chrome Browser

Start Browsing now with Ruby 2.6.4, Watir and Chrome!

~~~ dockerfile
FROM simonneutert/ruby-2.6.4-slim-headless-chrome-browser

COPY Gemfile* ./
RUN bundle install

WORKDIR /app
COPY . .
~~~

~~~ ruby
# /app/main.rb

# make sure to require the class
require_relative '../headless-chrome-browser/headless_chrome_browser'

# setup headless selenium / chrome 
headless_browser_master = HeadlessChromeBrowser.new
# init new browser window
browser = headless_browser_master.new_browser
# visit google
browser.goto('http://www.google.com')
# scrape content with nokogiri
html_content = Nokogiri::HTML(browser.html)
puts html_content.css("title").text
# close browser
browser.close
~~~