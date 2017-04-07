# ActionCommander

[![Gem Version](https://badge.fury.io/rb/action_commander.svg)](http://badge.fury.io/rb/action_commander)
[![Code Climate](https://codeclimate.com/github/skopciewski/action_commander/badges/gpa.svg)](https://codeclimate.com/github/skopciewski/action_commander)
[![Dependency Status](https://gemnasium.com/badges/github.com/skopciewski/action_commander.svg)](https://gemnasium.com/github.com/skopciewski/action_commander)

Solution based on the [jimweirich/wyriki][jww].
This pattern is useful, when you need to separate an interface from a business logic.

## Installation

Add this line to your application's Gemfile:

    gem 'action_commander'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install action_commander

## Usage

Create the action class:

```ruby
require 'action_commander/action'

class SomeAction < ActionCommander::Action
  def run(args)
    # do some things, collect params...
    # you can inject some dependencies, just use `context`
    context.database_session_from_controller.do_something
    # if everything is ok, pass the result to the 'success' callback
    if ok
      success(param1, param2)
    else
      # ... or if there were errors, for example pass an error message to the
      # 'failure' callback
      failure(msg)
    end
  end
end
```

and then you can use it in the controller:

```ruby
class SomeController

  attr_reader :database_session_from_controller

  def initialize
    @database_session_from_controller = DatabaseSession.new(connection)
  end

  def action
    # handle input ...
    run_helper(SomeAction, imput_param1) do |on|
      on.success do |param1, param2|
        # ...actions when success...
      end
      on.failure do |msg|
        # ...display the error msg ... or something...
      end
    end
  end

  private

  def run_helper(action_class, *args, &block)
    # `self` - the context which is injected to the action
    action_class.new(self, &block).run(*args)
  end
end
```

## Versioning

See [semver.org][semver]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[jww]: https://github.com/jimweirich/wyriki
[semver]: http://semver.org/
