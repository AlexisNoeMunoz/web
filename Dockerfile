FROM ruby:latest
COPY . /rails_app
WORKDIR /
RUN apt-get update 
RUN apt install -y nodejs 
RUN apt install -y npm 
RUN npm install --global -y yarn     
RUN gem install rails  
# RUN rails new rails_app -d mysql     
# RUN cd rails_app
# RUN bundle update
# RUN rails webpacker:install
# RUN rails webpacker:install:react
# RUN rails generate react:install
# RUN yarn 
# CMD ["rails", "s", "-b", "0.0.0.0"]