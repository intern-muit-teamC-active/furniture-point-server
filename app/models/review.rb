class Review < ApplicationRecord
    belongs_to :product

    enum type: [ :purchase, :display]

end
