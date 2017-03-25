# Haskii
[![Gem Version](https://badge.fury.io/rb/haskii.svg)](https://badge.fury.io/rb/haskii)
[![Build Status](https://semaphoreci.com/api/v1/mstojadinov/haskii/branches/master/badge.svg)](https://semaphoreci.com/mstojadinov/haskii)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'haskii'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install haskii

## Usage

```
$ haskii bar 2 4 6 8 6 4 2 1 6 5 4 3 2 1
Your happy bar chart:

   *
   *
  ***   *
  ***   **
 *****  ***
 *****  ****
******* *****
**************

$ haskii bar --emoji 🍀  1 1 2 3 5 2
Your happy bar chart:

    🍀
    🍀
   🍀🍀
  🍀🍀🍀🍀
🍀🍀🍀🍀🍀🍀

$ haskii bar --emoji 🍒  --output chart.html 2 4 6 8 6 4 2 1 6 5 4 3 2 1
Your happy bar chart is in "chart.html"
Terminal still rules :P #igor
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mimimalizam/haskii.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

