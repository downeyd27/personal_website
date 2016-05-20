## Personal Website
 * [Homepage](https://dillondowney.herokuapp.com/)
 * [Github Project](https://github.com/downeyd27/personal_website)
 * [My email](mailto:dillondowney@gmail.com)
  
## Description

Personal portfolio website to primaly showcase my web development projects.  This will also be a future hub for my personal hobbies and endeavors.

## Features

* Complete CRUD actions for Project objects, so they are dynamic.  
* Project objects are stored in an Amazon S3 bucket.
* Assets minified, compressed, and served through Amazon Cloudfront distrubtion.
* View website analytics through New Relic gem.
* [Google PageSpeed Insights](https://developers.google.com/speed/pagespeed/insights/?url=dillondowney.herokuapp.com&tab=desktop)
* [W3C HTML5 Validator](https://validator.w3.org) and then type in https://dillondowney.herokuapp.com/
* [W3C CSS Validator](http://www.css-validator.org/validator?uri=dillondowney.herokuapp.com&profile=css21&usermedium=all&warning=1&lang=en)
* Guard files and use Live Reload for development efficiency.
* Optimized for SEO, Mobile, Usability, Environment Integration, and Performance with the chrome extension [Web Developer Checklist](http://webdevchecklist.com/).

## TODO

* Refactor Project model.  Separate Projects's avatar(image)into its own Image class, so a Project can have many Images and an Image belongs to a Project.
* Add side bar with list of skills
* Add twilio api to integrate sending messages to my phone from a 'send me feedback.'
* Change styling colors and verify their accessibility
* When static image urls point to Amazon CloudFront distribution linked to Amazon S3 bucket 403 forbidden error occurs.
* Remove second title tag created from display_meta_data method
 
 ###Google PageSpeed recommendations

 * Leverage broswer caching
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
* [Binding of caller]()
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
* [Launchy]()
* [Sass Rails]()
 
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
