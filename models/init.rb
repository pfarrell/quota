require 'sequel'

connstr = ENV["QUOTA_CONN"]
DB = Sequel.connect(connstr)
Sequel::Model.plugin :timestamps

require_relative 'quote'
require_relative 'author'
require_relative 'source'
