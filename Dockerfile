FROM ruby:2.3.3
LABEL maintainer="matt@human.x.ai"

# bootstrap
RUN groupadd -r ubuntu && useradd -m -r -g ubuntu ubuntu

COPY --chown=ubuntu:ubuntu . /app

WORKDIR /app
RUN bundle install --path vendor/bundle

USER ubuntu

CMD bundle exec rackup