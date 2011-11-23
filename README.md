SpreeTaiwanPackage
==================


create new rails project

`rails new new_spree_project`

add to Gemfile

`gem "spree", :git => "git://github.com/tka/spree.git"`

`gem "spree_paypal_express", :git => "git://github.com/tka/spree_paypal_express.git"`

`gem "spree_i18n", :git => "git://github.com/tka/spree_i18n.git"`

`gem "spree_taiwan_package", :git => "git://github.com/tka/spree_taiwan_package.git"`

run

`bundle update`

`bundle exec rake db:bootstrap`
