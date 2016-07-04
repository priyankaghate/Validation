class Article < ActiveRecord::Base
	validates :title, presence: true
	validates :comment, length: {minimum: 5}
end
