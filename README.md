# pressar

This gem provides model access to the Wordpress database schema in a Rails / ActiveRecord like way.

It is in very early development stages, but the intention is to abstract away the concept of 'meta' tables and instead provide a heirarchical view of the Post table and its children.  

The desired model heirarchy is follows:

```
Post
 ├ Categories
 ├ Tags
 ├ Images
```


## Installation

Install the latest stable release:

```
$ gem install pressar
```

In Rails, add it to your Gemfile:

```ruby
gem 'pressar'
```

Finally, restart the server to apply the changes.


## TODO

Abstract database connection
Abstract s3
Config for short tag replacements-  yml file?
