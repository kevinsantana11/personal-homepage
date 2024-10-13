FROM ruby:3.3

RUN gem install bundler
#RUN bundle config --global frozen 1

RUN mkdir /home/personal-homepage
WORKDIR /home/personal-homepage

VOLUME /home/personal-homepage
RUN bundle install


CMD ["bundle", "exec", "jekyll", "serve", "--drafts"]
