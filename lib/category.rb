class Category
  include MongoMapper::Document
  set_collection_name 'categories'

  key :name
end
