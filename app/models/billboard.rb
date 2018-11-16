class Billboard < ApplicationRecord
has_many :albums
has_many :artists
end
