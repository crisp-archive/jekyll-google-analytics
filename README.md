# Jekyll Google Analytics

![](https://img.shields.io/badge/license-MIT-blue.svg)
![](https://badge.fury.io/rb/jekyll-google-analytics.svg)
[![Code Climate](https://codeclimate.com/github/crispgm/jekyll-google-analytics/badges/gpa.svg)](https://codeclimate.com/github/crispgm/jekyll-google-analytics)

A Liquid tag plugin for Jekyll

## Installation

1. Add the following to your site's ```Gemfile```:

    ```
    gem "jekyll-google-analytics"
    ```

2. Add the following to your site's ```_config.yml```:

    ```
    gems:
      - jekyll-google-analytics

    ga:
      tracking_id: UA-50708664-1
    ```

3. Add the following in your site's template(s):

    ```
    {% ga %}
    ```