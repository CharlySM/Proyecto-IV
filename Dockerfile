FROM ruby:2.2-onbuild

COPY  . .

RUN bundle install

EXPOSE 80

CMD rackup ./config.ru -p 80
