## Personal Website
 * [Homepage](https://dillondowney.herokuapp.com/)
 * [Github Project](https://github.com/downeyd27/personal_website)
 * [Email me](mailto:dillondowney@gmail.com)

## Description

[Personal portfolio website](https://dillondowney.herokuapp.com/) to showcase my web development projects.  This will also be a future hub for my personal hobbies and endeavors.  Visit my fun page for a random grouping of mini projects.

## Features

* Responsive with [flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/) and [media queries](http://www.w3schools.com/css/css3_mediaqueries.asp).
* Complete [RESTful CRUD actions](http://guides.rubyonrails.org/routing.html#crud-verbs-and-actions) for Project objects, so they are dynamic.  
* Project objects are stored in an [Amazon Web Services's](https://aws.amazon.com/) S3 bucket.
* Assets minified, compressed, and served through [Amazon Web Services's](https://aws.amazon.com/) Cloudfront distrubtion.
* View website analytics through [New Relic](https://newrelic.com/).
* [Google PageSpeed Insights](https://developers.google.com/speed/pagespeed/insights/?url=dillondowney.herokuapp.com&tab=desktop)
* [W3C HTML5 Validator](https://validator.w3.org) and then type in https://dillondowney.herokuapp.com/
* [W3C CSS Validator](https://www.css-validator.org/validator?uri=dillondowney.herokuapp.com&profile=css21&usermedium=all&warning=1&lang=en)
* Guard files and use [LiveReload](https://livereload.com/) for development efficiency.
* Optimized for SEO, Mobile, Usability, Environment Integration, and Performance with the chrome extension [Web Developer Checklist](https://webdevchecklist.com/).
* Demonstration of [HTML5 Local Storage API](http://www.w3schools.com/html/html5_webstorage.asp).
* Demonstartion of using [HTML5 Geolocation API](http://www.w3schools.com/html/html5_geolocation.asp) to find users starting position, current position, and distance travelled with error handling.
* Table of Contents button to display heading tag outline for better accessibility.

## API's
* [Twilio Website](https://www.twilio.com/)
* [Twilio Ruby on Rails tutorial](https://www.twilio.com/docs/tutorials/walkthrough/server-notifications/ruby/rails)
Integrate the Twilio API to allow a user visiting my website to contact me via a text message.  (BUG: After hitting contact button refresh the page and the form to send me a text will appear.)

## TODO

* Fix issue: After hitting a route you must refresh page manually to view the page contents. I believe it started after adding twilio /messages/reply route.
* Refactor Project model.  Separate Projects's avatar(image)into its own Image class, so a Project can have many Images and an Image belongs to a Project.
* Add side bar with list of skills
* Change styling colors and verify their accessibility
* When static image urls point to Amazon CloudFront distribution linked to Amazon S3 bucket 403 forbidden error occurs.
* Remove second title tag created from display_meta_data method

 ###[Google PageSpeed recommendations](https://developers.google.com/speed/pagespeed/insights/?url=dillondowney.herokuapp.com&tab=desktop)

 * [Leverage broswer caching](https://devcenter.heroku.com/articles/http-caching-ruby-rails)
 * Mobile viewport is 412px with a 411px viewport(h2 elements falling outside viewport)
 * Eliminate render-blocking JavaScript and CSS in above-the-fold content. Asychronously load from Amazon CloudFront.
 * Optimize images for mobile by losslessly compressing images from CloudFront

## Dependencies

* [Ruby](https://www.ruby-lang.org/en/)
* [Ruby on Rails](http://rubyonrails.org/)
* [PostgreSQL](http://www.postgresql.org/)
* [Bundler](http://bundler.io/)
* [PG](http://deveiate.org/code/pg/)
* [Better Errors](https://github.com/charliesome/better_errors)
* [Binding of caller](https://github.com/banister/binding_of_caller)
* [RSpec](http://rspec.info/)
* [Rails 12factor](https://github.com/heroku/rails_12factor)
* [Guard](https://github.com/guard/guard)
* [Rack Live Reload](https://github.com/johnbintz/rack-livereload)
* [Capybara](https://github.com/jnicklas/capybara)
* [Factory Girl Rails](https://github.com/thoughtbot/factory_girl_rails)
* [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers)
* [Simplecov](https://github.com/colszowka/simplecov)
* [Faker](https://github.com/stympy/faker)
* [AWS SDK](https://github.com/aws/aws-sdk-ruby)
* [Paperclip](https://github.com/thoughtbot/paperclip)
* [Puma](https://github.com/puma/puma)
* [Newrelic RPM](https://github.com/newrelic/rpm)
* [HTML Compressor](https://github.com/paolochiodi/htmlcompressor)
* [Meta Tags](https://github.com/kpumuk/meta-tags)
* [Dalli](https://github.com/petergoldstein/dalli)
* [Memcachier](https://github.com/memcachier/dalli)
* [Launchy](https://github.com/copiousfreetime/launchy)
* [Sass Rails](https://github.com/rails/sass-rails)

##Author

[Dillon Downey](https://github.com/downeyd27/)

## License

[MIT](http://opensource.org/licenses/MIT)

*Copyright (c) 2016* *Dillon Downey*

*Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:*

*The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.*

*THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.*
