require 'sequel'

user = ENV["QUOTA_DB_USER"]
pass = ENV["QUOTA_DB_PASS"]
host = ENV["QUOTA_DB_HOST"]
db = ENV["QUOTA_DB_DB"]
DB = Sequel.connect("mysql://#{user}:#{pass}@#{host}/#{db}")
Sequel::Model.plugin :timestamps

require_relative 'quote'
require_relative 'author'
require_relative 'source'
