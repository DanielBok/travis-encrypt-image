FROM ruby:slim

RUN apt-get update
RUN gem install travis

ENTRYPOINT ["bash"]
