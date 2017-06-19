class Post < ApplicationRecord
  DEFAULT_ATTRIBUTES = [:title, :content]
  belongs_to :product
end
