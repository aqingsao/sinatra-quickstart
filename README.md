## Why this project

A sample project for sinatra with bundler, data mapper, slim and rack test. I choose this technical stack because:

### [Bundler](http://gembundler.com/)
Helps to maintain a consitent environment for ruby applications, tracks the rubygems and versions, so the application will always have the exact gems that it needs to run.

### [Slim](http://slim-lang.com)
A lightweight template engine, less code comparing with erb and erubis, and even cleaner than haml; It has [not bad or even surprise performance](http://jira.codehaus.org/browse/JRUBY-6684) comparing with others.

### rack test
The test framework [suggested by sinatra](http://www.sinatrarb.com/intro.html#Testing).

### [data mapper](http://http://datamapper.org/)
Provides one API for various databases, sqlite, mysql, and even nosql, has [much advantage](https://speakerdeck.com/moonglum/nosql) and is favored by [many developers](http://http://stackoverflow.com/questions/2169832/data-mapper-vs-active-record);

## How to use it

You could simply fork it and use as a template when you are developing a sinatra project.
### When first run
gem install bundler  
bundler install

### Run app
rackup -p 4567

### Run Testing
bundle exec ruby spec/app_spec.rb 
