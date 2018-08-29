# querystring

[![Open Source Love](https://img.shields.io/badge/Open%20Source-%E2%9D%A4-%23ff2520.svg)](https://shields.io)
[![License](https://img.shields.io/github/license/crystalrealm/querystring.svg)](https://shields.io)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Build Status](https://travis-ci.com/crystalrealm/querystring.svg?branch=master)](https://travis-ci.com/crystalrealm/querystring)

Parse and stringify HTTP query strings. The `Crystal` way! :tada:

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  querystring:
    github: crystalrealm/querystring
```

## Usage

```crystal
require "querystring"

QString.parse("?a=2") 
# => Hash {"a" => 2}

QString.stringify({"a" => "test", "b" => 2})
# => String "?a=test&b=2"
```

## API

### .parse(*String*)

Parse a query string into a Hash.

The returned object's class equals to `Hash(String, Int32 | String | Nil)`.

### .stringify(*Hash*, *[options] : Hash*)

Stringify a hash into a query string.

The returned object's class equals to `String`.

#### question_mark

Type: `boolean`<br>
Default: `true`

Put a question mark (`?`) before the query.

## Contributing

1. Fork it (<https://github.com/crystalrealm/querystring/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [szekelymilan](https://github.com/szekelymilan) Milan Szekely - creator, maintainer
