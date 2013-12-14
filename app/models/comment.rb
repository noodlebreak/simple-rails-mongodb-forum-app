class Comment
  include Mongoid::Document
  field :name
  field :content
  embedded_in :topic, :inverse_of => :comments

end
