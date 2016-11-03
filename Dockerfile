FROM ruby

RUN gem install bundler

COPY Gemfile /
RUN bundle install

COPY ./app-tests-example /app-tests
COPY ./docker-entrypoint /docker-entrypoint

WORKDIR /app-tests

ENTRYPOINT ["/docker-entrypoint"]

CMD ["cucumber"]
