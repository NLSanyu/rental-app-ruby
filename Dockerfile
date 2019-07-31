FROM ruby:2.6.3

WORKDIR /usr/src/app

RUN gem install bundler

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD [ "bundle", "exec", "puma", "-C", "config/puma.rb" ]