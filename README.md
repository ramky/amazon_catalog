### Overview
This script fetches from Amazon Catalog and saves it into the mongo database.  The search terms are specified in /bin/fetch

```ruby
proc.search_for(['led zeppelin', 'pinkfloyd', 'richard bach',
  'ruby programming', 'the american president', 'true lies',
  'u2', 'no country for old men'])
```

### Prerequisites

You'll need to have an Amazon ECS account with the ACCESS_ID AND SECRET KEY.  You will also need an ASSOCIATE_TAG which you can get through https://affiliate-program.amazon.com/. Once you have these, you can save it into your shell .rc (e.g. .bashrc)

```shell
export AWS_ACCESS_ID=abcd
export AWS_SECRET_KEY=xyz
export ASSOCIATE_TAG=rst
```

### Command
```shell
bundle install
/bin/fetch
```
