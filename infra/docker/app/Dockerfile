FROM ruby:3.0.5

RUN apt-get update -qq
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
&& apt-get install -y nodejs
RUN npm install --global yarn
RUN mkdir /workspace
WORKDIR /workspace

COPY ./backend/Gemfile /workspace/Gemfile
COPY ./backend/Gemfile.lock /workspace/Gemfile.lock

RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]
