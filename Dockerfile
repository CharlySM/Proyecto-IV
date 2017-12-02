FROM ruby:2.2-onbuild

COPY  . .

RUN bundle install

EXPOSE 80

CMD ["bundle", "exec", "rackup", "config.ru", "-p", "80", "-s", "puma", "--host", "0.0.0.0"]
