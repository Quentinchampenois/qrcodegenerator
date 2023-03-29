# QRCode Generator

Light Rails application to convert String to QRCode easily based on [RQRCode]().

## Why ? 

This is a discover of [Rails 7]() and [turbo-streams feature](). This application only contains one route, user have a simple text input and a submit button. Idea is to provide a secure tool to create QRCode easily.

It generates a QRCode as PNG thanks to RQRCode gem.


> **Note**
> This project will not evolve

## Getting started

If you want to run application locally : 

1. Clone repository
2. Install ruby dependencies : `bundle install`
3. Create database : `bundle exec rake db:create db:migrate`
4. Run application : `bundle exec rails s`

🚀 Application starts and is reachable at http://localhost:3000

## Contributing

Contributions are welcome, any idea or feature. 

## License

[See license](./LICENSE)