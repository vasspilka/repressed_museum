FROM ruby:2.3.0

# install cron
RUN apt-get update && apt-get install cron -y

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
COPY .ruby-version /usr/src/app/
RUN bundle install

COPY . /usr/src/app

ENV HANAMI_HOST=0.0.0.0

EXPOSE 2300
CMD ["hanami server"]
