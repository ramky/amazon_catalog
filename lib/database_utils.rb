class DatabaseUtils
  attr_reader :catalog

  def initialize(catalog)
    @catalog = catalog
  end

  def save_or_update
    category = Category.find_or_create_by_name(catalog.cat_name)
    unless category.slug
      category.slug = catalog.cat_name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
      category.save
    end
    
    cat = Catalog.find_or_initialize_by_asin(catalog.asin)
    set_catalog(cat, catalog)
    set_catalog_image(cat, catalog)
    cat.category_id = category._id
    cat.save
  end

  def set_catalog(cat, catalog)
    array = %w[title artist manufacturer page_url]
    array.each do |item|
      cat[item] = catalog[item]
    end
  end

  def set_catalog_image(cat, catalog)
    array = %w[URL Height Width]
    array.each do |item|
      key   = 'image_' + item.downcase
      cat[key] = catalog.image[item]
    end
  end
end
