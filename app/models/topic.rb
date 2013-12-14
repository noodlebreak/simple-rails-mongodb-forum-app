class Topic
  include Mongoid::Document
  field :topic_name, type: String
  field :topic_content, type: String
  field :topic_author, type: String
  validates_presence_of :topic_author, :topic_content, :topic_name
  embeds_many :comments
end
