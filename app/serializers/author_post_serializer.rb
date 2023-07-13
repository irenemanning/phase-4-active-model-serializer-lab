class AuthorPostSerializer < ActiveModel::Serializer
  attributes :short_content, :title
  has_many :tags, through: :post_tags
  def short_content
    "#{object.content[0..39]}..."
  end
end
