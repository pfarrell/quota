class Source < Sequel::Model
  one_to_many :quotes
  one_to_many :authors
end

