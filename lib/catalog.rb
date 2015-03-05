class Catalog
  include MongoMapper::Document
  belongs_to :category
  set_collection_name 'catalogs'

  key :asin
  key :image_url
  key :image_height
  key :image_width
  key :category_id, ObjectId
  key :artist
  key :manufacturer
  key :page_url
end
