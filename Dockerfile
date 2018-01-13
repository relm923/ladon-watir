FROM ruby:2.3.4

RUN mkdir /app /logs
WORKDIR /app

COPY Gemfile Gemfile.lock ladon-watir.gemspec /app/

RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . /app/

ENTRYPOINT ["bundle", "exec"]

CMD ["ladon-run", "-p /logs/ladon.json"]
