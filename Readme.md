# Start Browsing now with Ruby 2.6.4, Watir and Chrome!

simply clone this repo and start surfing :wink:

## What do you need to learn?
- browser controls are handled by [Watir](http://watir.com/)
- scrape content like a boss with [Nokogiri](https://nokogiri.org/)

### That's it! Now go, automate stuff!

all the ruby it takes, it as simple as this demo

~~~ ruby
# load object
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

# close your browser, always tidy up ;-)
browser.close
~~~

### Well, how do I handle the whale? Docker is new to me!

1. clone this repo
2. navigate to the directory with your terminal
3. `$ docker image build . -t headless-watir-ruby`
4. `$ docker run --rm headless-watir-ruby`

if you changed the code in your main.rb? no problem, build the image again (`$ docker image build . -t headless-watir-ruby`) before running it :wink:
