### Overview
This is a script to fetch the first item for a search term from the Amazon Catalog.

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
