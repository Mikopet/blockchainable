# Blockchainable

This gem is usable for making blockchains from database through models in Rails. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'blockchainable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blockchainable

## Usage

In the model you want to be blockchainable, just write:

```ruby
include Blockchainable
```

And add the input data for the hashes:

```ruby
hash_data :id, :created_at, :more_datas
```

If you want to hash with the previous block (and sure you want), you need to define a method for that, something like this:

```ruby
def previous_hash
  self.class.where('id < ?', id).limit(1).offset(1).order('id DESC').first&.hash
end
```

And add it to hash_data

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Mikopet/blockchainable. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Blockchainable project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/blockchainable/blob/master/CODE_OF_CONDUCT.md).
