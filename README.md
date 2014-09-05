# Installation

    # Gemfile
    gem 'acts_as_permalinkable'

# Usage

To generate parameterized string from `title` column to `slug` column before validation:

```ruby
class Post < ActiveRecord::Base
  acts_as_permalinkable :title, :slug
end
```

You probably want to change the way finding the record using `find_by`:

```ruby
def set_post
  @post = Post.find_by(slug: params[:id])
end
```

If there are both `name` and `permalink` columns, simplly write:

```ruby
class Post < ActiveRecord::Base
  acts_as_permalinkable
  # same as `acts_as_permalinkable :name, :permalink`
end
```

# What does it do?

- Validates presence and uniqueness of target column.
- Generate parameterized string from source column to target column before validation if the target colmn is blank.
- Override `to_param`, returnes the value of target column.
- If the value of source column is not ASCII, a random string is generated insteadly.