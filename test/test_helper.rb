# frozen_string_literal: true

Dir[File.expand_path('../lib/**/*.rb', __dir__)].each { |file| require file }

require 'minitest/autorun'
require 'minitest/power_assert'
