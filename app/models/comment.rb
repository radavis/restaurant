class Comment < ActiveRecord::Base
  belongs_to :menu_item

  # validates_presence_of :menu_item_id
  validates_presence_of :menu_item
  validates_presence_of :content

validates :content, length:{
    minimum: 6
}

  # validates :content, length: {
  #   minimum: 2,
  #   tokenizer: lambda { |str| str.scan(/\w+/) },
  #   too_short: "must have at least %{count} words"
  # }
end
