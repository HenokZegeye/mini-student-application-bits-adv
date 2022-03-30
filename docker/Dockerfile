FROM 3.1.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client cmake
RUN mkdir /opt/app
WORKDIR /opt/app

COPY ./Gemfile ./Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0"]
