class Vip < ApplicationRecord
    has_many :pingluns
    has_secure_password
end
