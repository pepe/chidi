<div style="width: 100%; display: flex; justify-content: center;">
  <img alt="Hi. I am Chidi, your soulmate." src="chidi.png" />
</div>

# chidi

## Motivation

To create and maintain framework for real-time applicaitons and REST APIs akin
to [Feathers] plus JAMStack in [Janet] programming language. 

At the begining it will be only backend story. Applicaiton related code will be
generated with [Mendoza]. All html will be static, generated also by [Mendoza].

## Usage

You need to have [Janet] language and all dependencies installed. Then you have
to setup db with `./setup-chidi`, then finaly just run `./chd`. Only 
'application/json' content-type is accepted by the server. You can test it with
curl: 

`curl -v -H "Accept: application/json" http://127.0.0.1:8130/people`

## Tests

To run tests, first run test server with `./test-chidi` then with `jpm test`.

## TODO
- [ ] add generation from template
- [x] separate framework from application code
- [x] minimal working example
  - [x] circlet server
  - [x] json only services
  - [x] sqlite storage
  - [x] all usable http verbs

[Janet]: https://janet-lang.org/index.html
[Feathers]: https://feathersjs.com/
[Mendoza]: https://github.com/bakpakin/mendoza
