class Artist < ApplicationRecord
belongs_to :billboard
has_many :albums
end
