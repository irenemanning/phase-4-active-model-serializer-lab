class PostSerializer < ActiveModel::Serializer
  attributes :title, :content
  has_many :tags, through: :post_tags
  belongs_to :author
  #hehehe
end
