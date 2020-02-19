[![Build Status](https://travis-ci.com/L4r1k/L4r1k-Blog.svg?branch=master)](https://travis-ci.com/L4r1k/L4r1k-Blog) [![codecov](https://codecov.io/gh/L4r1k/L4r1k-Blog/branch/master/graph/badge.svg)](https://codecov.io/gh/L4r1k/L4r1k-Blog) [![Maintainability](https://api.codeclimate.com/v1/badges/d34cc9cbf5c8e6dc1c4e/maintainability)](https://codeclimate.com/github/L4r1k/L4r1k-Blog/maintainability)  
# L4r1k-Blog
![Animation](https://github.com/L4r1k/L4r1k-Blog/raw/master/anim.gif "Animation")

## Building the Site
- Use `./bin/webpack-dev-server` to build assets live and speed up rendering
- Use `whenever --update-crontabs --set environment='development'` to test crontab in development
    - `crontab -r` to remove cron jobs
    - `crontab -l` to list cron jobs
    - remember to restart the cron service after updating the cron tab
        - `sudo service cron restart`
- Use `bundle exec wheneverize .` to generated `config/schedule.rb` file
