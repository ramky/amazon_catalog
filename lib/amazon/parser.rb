module Amazon
  class Parser
    attr_reader :catalog

    def initialize
      @catalogs = Array.new
    end

    def find_first(response)
      response.items.each do |item|
        next unless item.get('ASIN')
        create_catalog(item)
        return # we only need first one
      end
    end

    def create_catalog(item)
      @catalog = OpenStruct.new
      @catalog.asin         = item.get('ASIN')
      @catalog.image        = item.get_hash('MediumImage')
      @catalog.cat_name     = item.get('ItemAttributes/Binding')
      @catalog.title        = item.get('ItemAttributes/Title')
      @catalog.artist       = item.get('ItemAttributes/Artist')
      @catalog.manufacturer = item.get('ItemAttributes/Manufacturer')
      @catalog.page_url     = item.get('DetailPageURL')
    end
  end
end
