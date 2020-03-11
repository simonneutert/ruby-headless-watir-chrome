FROM simonneutert/ruby-2.6.5-headless-chrome

RUN gem install bundler
COPY Gemfile* ./
RUN bundle install

WORKDIR /headless-chrome-browser
COPY headless_chrome_browser.rb .
COPY main.rb .

CMD ["ruby", "main.rb"]