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

ENV SECRET_KEY_BASE 4gfc9303daa29e70296f1ad165ba417e042cb70c9b34b41d9657c8e8607978d3657649f9964041c58574834ab0f120a2feb864c9359a8e94f4fb43c59b252471

EXPOSE 2300
CMD ["hanami server"]
