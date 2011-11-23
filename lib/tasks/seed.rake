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
