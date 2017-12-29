require 'bundler/setup'
require 'blockchainable'
require 'active_model'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

class ChainedModel
  include ActiveModel::Model
  include Blockchainable

  hash_data :data

  attr_accessor :id, :data

  def initialize(id = Random.new, data = 'GENESIS')
    @id = id
    @data = data
  end
end
