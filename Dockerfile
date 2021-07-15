FROM ruby:3.0.2
COPY . /rails_app
WORKDIR /rails_app
RUN apt-get update 
RUN apt install -y nodejs 
RUN apt install -y npm 
RUN npm install --global -y yarn           
RUN bundle update 
RUN rails webpacker:install
# CMD ["rails", "s", "-b", "0.0.0.0"]