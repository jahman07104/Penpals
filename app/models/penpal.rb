class Penpal < ApplicationRecord
belongs_to :users
validates :name, presence: tru
e

end
