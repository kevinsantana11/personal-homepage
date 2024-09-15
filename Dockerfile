FROM ruby:3.3

RUN gem install bundler
#RUN bundle config --global frozen 1

RUN mkdir /srv/personal-homepage
WORKDIR /srv/personal-homepage

COPY site/ /srv/personal-homepage
RUN bundle install


CMD ["bundle", "exec", "jekyll", "serve"]
