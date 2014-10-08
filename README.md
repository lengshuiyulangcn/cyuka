# Cyuka

A ruby converter to convert simplified Chinese character into Japansese character and vice versa.
简体汉字和日语汉字相互转换工具
簡体字と日本語漢字変換ツール
## Installation

Add this line to your application's Gemfile:

    gem 'cyuka'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cyuka

## Usage

```ruby
require "cyuka"
converter=Cyuka.new
#from simplified chinese to japanese
converter.convert("达人")
#=>"達人"
#from japanese to simplified chinese
converter.convert("達人","ja2cn")
#=>"达人"
