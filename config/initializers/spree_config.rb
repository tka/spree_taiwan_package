if Spree::Config.instance
  Spree::Config.set(:auto_capture       => true )
  Spree::Config.set(:default_country_id => 197 )
  Spree::Config.set(:default_locale     => "zh-TW" )
end
