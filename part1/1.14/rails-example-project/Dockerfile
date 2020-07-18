FROM ruby:2.6.0

USER root

RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

# Install a JS runtime
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs

COPY . .

RUN rails db:migrate && rake assets:precompile

EXPOSE 3000

CMD ["rails", "s"]