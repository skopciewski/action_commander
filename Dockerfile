FROM skopciewski/ruby-dev

ENV BUNDLE_WITHOUT=""

# install project
WORKDIR /opt/project/code
COPY . /opt/project/code

RUN bundle install

CMD sh
