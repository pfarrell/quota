require 'json'

class Quote < Sequel::Model
  many_to_one :author
  many_to_one :source

  def to_json(opts={})
    return JSON.generate({quote: self.quote, author: self.author.name, source: self.url})
  end
end
