class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
	validates :body, presence: true
	has_attached_file :image, styles: { medium: "600x400#", small: "350x250>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
