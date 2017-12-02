FROM ruby:2.2-onbuild

COPY . .

RUN bundle install

EXPOSE 80

CMD cd sinatraapp && ruby app.rb
