class Micropost < ApplicationRecord
    belongs_to :user
    scope :findUser, -> { where(user_id: 6) }
    Micropost.select("distinct users.*").joins(:user)
    validates:content, length: {maximum:20}
end
