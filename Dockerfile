FROM ruby:2.7-alpine
COPY entrypoint.rb /entrypoint.rb
ENTRYPOINT ["ruby", "/entrypoint.rb"]
