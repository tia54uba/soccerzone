class Post < ApplicationRecord
  
  belongs_to :user
  has_many:post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  validates :match_date_time, presence: true
  validates :category, presence: true
  validates :home_team, presence: true
  validates :away_team, presence: true
  validates :body, presence: true, length:{maximum:150}
  
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
  
  def self.search_for(content, method)
    method = 'partical'
    Post.where('home_team LIKE? OR away_team LIKE?', '%'+ content+ '%','%'+ content+ '%')
  end
  
end
