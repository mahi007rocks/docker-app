#Ruby Image 2.5.1
FROM ruby:2.5.1

# Author 
MAINTAINER vykunta rao

# Application Dependences 
RUN apt-get update -qq && apt-get install -y build-essential nodejs  nodejs-legacy mysql-client vim

# Creating Directory in the container /myapp
RUN mkdir /myapp

# Working Directory in the container
WORKDIR /myapp

# Copying Gemfiles from Source to container Destination 
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

# Run the Gemfile by using this command 
RUN bundle install

# Add the source file to container Destination
ADD . /myapp


# Exposing the application with port 3000  
EXPOSE 3000

# Run the application 
CMD ["rails","s"]
