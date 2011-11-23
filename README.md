SpreeTaiwanPackage
==================

Example
=======

`rails new new_spree_project`

add 

‵gem "spree", :git => "git://github.com/tka/spree.git"`
`gem "spree_paypal_express", :git => "git://github.com/tka/spree_paypal_express.git"`
`gem "spree_i18n", :git => "git://github.com/tka/spree_i18n.git"`
`gem "spree_i18n", :git => "git://github.com/tka/spree_taiwan_package.git"`

bundle update

bundle exec rake db:bootstrap
