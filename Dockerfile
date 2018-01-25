FROM ruby:alpine
RUN mkdir /srv/cafenotoire
WORKDIR /srv/cafenotoire

COPY Gemfile Gemfile.lock  ./

RUN apk add --update sqlite-libs nodejs tzdata
RUN apk add --virtual foo ruby-dev build-base sqlite-dev && \
    gem install bundler && bundle install --jobs 20 --retry 5 && \
    apk del foo && \
    rm -rf /var/cache/apk/*

COPY . ./

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
