FROM ruby:3.1.4-alpine

ENV APP_PATH /opt/app

RUN apk add --update --no-cache build-base postgresql-dev tzdata gcompat

RUN mkdir -p ${APP_PATH}
WORKDIR ${APP_PATH}

COPY ./Gemfile* ./
RUN gem install bundler --no-document --version 2.3.7

RUN bundle check || bundle install

COPY . ./

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
