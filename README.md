# grunt-coffeescript-sass-slim

This project was originally generated with [yo angular generator](https://github.com/yeoman/generator-angular)
version 0.11.1. The Gruntfile has been modified to use Slim.

## Build & development

### Dependencies

Run `gem install compass`

Run `npm install`

Run `bower install`

### Building

Run `grunt`

Coffescript, Sass and Slim will compile to /.tmp and /dist. Dependencies are injected into compiled html moved to /dist

### Server / Live Reload

Run `grunt serve`

Coffescript, Sass and Slim will compile to /.tmp.

Livereload has been altered to load html from /.tmp instead of /app to allow livereload of compiled Slim.

## Testing

Running `grunt test` will run the unit tests with Karma. Unit tests are the generator defaults.
