class Post < ActiveRecord::Base
  acts_as_permalinkable :title, :slug
end
