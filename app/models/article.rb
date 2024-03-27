class Article < ApplicationRecord

    include Visible

    has_many :comments

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

    VALID_STATUSES = ['public', 'private', 'archived']

end
