class Article < ActiveRecord::

	validates :title, presence: true
	validates :content, presence: true
  
  belongs_to :user

end
