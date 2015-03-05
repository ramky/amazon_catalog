$MONGO_CONFIG          = YAML.load(File.read(File.expand_path('../../config/mongo.yml', File.dirname(__FILE__))))['MONGODB']
MongoMapper.connection = Mongo::Connection.new($MONGO_CONFIG['host'], $MONGO_CONFIG['port'])
MongoMapper.database   = $MONGO_CONFIG['database']
