<div style="width: 100%; display: flex; justify-content: center;">
  <img alt="Hi. I am Chidi, your soulmate." src="chidi.png" />
</div>

# chidi

Simple API library and generators.

## Motivation

To create and maintain framework for real-time applicaitons and REST APIs akin
to [Feathers] plus [JAMStack] in [Janet] programming language.  Better name will
be WAMStack, as I would like to use wasm for FE.

At the begining it will be only backend story. Service are generated by the
macros. All html will be static, generated also by [Mendoza].

## Installation 

You need to have [Janet] language and all dependencies installed. Then you can
install `chidi` with `jpm`:

`[sudo] jpm install chidi`

## Usage

### App Generation

When you have  `chidi` installed you can generate new application with it:

`chd generate --app-name test`

Then you need to `cd test` and run server:
- / root, which can be used as ping service
- not-found for everything else

`chd server`

Only 'application/json' content-type is accepted by the server. You can test it
with curl: 

`curl -v -H "Accept: application/json" http://127.0.0.1:8130/`

## Service generation

You can generate simple SQLite backed API service with `chidi`:

`chd generate --service people --setup`

This command will create new people service with setup, which needs a little
more editing to run. @todo explain

## TODO

- [ ] @todo add more documentation
- [ ] @todo add application tests with embedded circlet server
- [ ] @todo add library tests
- [ ] @todo generate file contents with mdz
- [x] make chd binary only binary with argparse
- [x] remove test app and tests
- [x] make standalone lib
- [x] add service macros
- [x] separate framework from application code
- [x] minimal working example
  - [x] circlet server
  - [x] json only services
  - [x] sqlite storage
  - [x] all usable http verbs

[Janet]: https://janet-lang.org/index.html
[Feathers]: https://feathersjs.com/
[Mendoza]: https://github.com/bakpakin/mendoza
[JAMStack]: https://jamstack.org/
