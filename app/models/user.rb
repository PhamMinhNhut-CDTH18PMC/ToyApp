class User < ApplicationRecord
    has_many :micropost
    validates :name, presence: true, format:{with: /\A[a-z0-9\-_]+\z/i }
    validates :email, presence: true, format:{with: /\A(\S+)@(.+)\.(\S+)\z/}
end
