class Qr < ApplicationRecord
    enum type: [ :purchase, :display, :enter ] 

end
