class User < ActiveRecord::Base
    validates :name, presence: true, length: {maximum: 64}
    validates :email, presence: true, length: {maximum: 255},
                        format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i },
                        uniqueness: { case_sensitive: false }
end
