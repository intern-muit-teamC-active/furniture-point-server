class Qr < ApplicationRecord
    enum kind: [ :purchase, :display, :enter ] 

end
