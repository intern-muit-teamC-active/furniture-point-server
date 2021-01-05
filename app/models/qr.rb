class Qr < ApplicationRecord
    belongs_to :product
    enum type: [ :purchase, :display, :enter ]

end
