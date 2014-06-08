require 'sequel'
require 'json'

DB = Sequel.connect(ARGV[0])
Sequel::Model.plugin :timestamps

require_relative 'models/quote'
require_relative 'models/source'
require_relative 'models/author'

open(ARGV[1]).each_line do |line|
  obj = JSON.parse(line)
  author = Author.find_or_create(name: obj["author"])
  Quote.find_or_create(author: author, quote: obj["quote"], url: obj["source"])
end
