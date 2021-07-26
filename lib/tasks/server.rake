
task :start do       
    bundle exec 'rails s -b 0.0.0.0'    
end

task :stop do
    bundle exec 'pkill -9 ruby'
end
