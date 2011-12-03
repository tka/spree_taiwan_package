namespace :db do
  task :seed  => :environment do
    Rake::Task["db:load_taiwan_states"].execute
  end

  task :load_taiwan_states => :environment do
    Spree::Core::Fixtures.reset_cache 
    seed_dir = File.expand_path( File.join( File.dirname(__FILE__), '..','..','db', 'default') )  
    Rake::Task["db:load_dir"].execute( Rake::TaskArguments.new( [:dir], [ seed_dir ] ) )
  end
end

namespace :spree do
  namespace :taiwan_package do
    desc "update spree preferences "
    task  "update_spree_preferences" => :environment do
      spree_pref= Spree::AppConfiguration.new
      spree_pref[:auto_capture] = true
      spree_pref[:default_country_id] = 197
      spree_pref[:default_locale] = "zh-TW"
    end
  end
end

