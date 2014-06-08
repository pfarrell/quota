class Quote < Sequel::Model
  many_to_one :author
  many_to_one :source
end
