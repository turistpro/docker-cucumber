FROM ruby

RUN gem install bundler

COPY Gemfile /
RUN bundle install

COPY ./app-tests-example /app-tests
COPY ./docker-entrypoint.sh /
COPY ./docker-entrypoint.d /

WORKDIR /app-tests

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["cucumber"]
