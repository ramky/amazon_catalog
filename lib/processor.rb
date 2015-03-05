class Processor
  attr_reader :search_items

  def initialize
    Amazon::Ecs.configure do |options|
      options[:AWS_access_key_id] = ENV['AWS_ACCESS_ID']
      options[:AWS_secret_key]    = ENV['AWS_SECRET_KEY']
      options[:associate_tag]     = ENV['ASSOCIATE_TAG']
    end

    @search_options = {
      response_group: 'Medium',
      country: 'us',
      search_index: 'All'
    }
  end

  def search_for(search_items)
    @search_items = search_items
  end

  def process
    search_items.each do |search_item|
      response                     = Amazon::Ecs.item_search(search_item, @search_options)
      parser                       = Amazon::Parser.new
      parser.find_first(response)
      db                           = DatabaseUtils.new(parser.catalog)
      db.save_or_update
    end
  end
end
