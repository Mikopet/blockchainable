require 'blockchainable/version'
require 'active_support'
require 'digest'

# The concern for ActiveRecord models
module Blockchainable
  extend ActiveSupport::Concern

  included do
    attr_accessor :hash

    validate :hash_is_valid?

    def hash!
      sha = Digest::SHA256.new

      data_to_hash.each do |data|
        sha.update send(data).to_s if defined? data
      end

      @hash = sha.hexdigest
    end
  end

  def hash_is_valid?
    true
  end

  # Adding class methods
  module ClassMethods
    def hash_data(*args)
      define_method :data_to_hash do
        args
      end
    end
  end
end
