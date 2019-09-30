FROM simonneutert/ruby-2.6.4-slim-headless-chrome:20190926

RUN gem install bundler
COPY Gemfile* ./
RUN bundle install

WORKDIR /headless-chrome-browser
COPY headless_chrome_browser.rb .