# Day 5

## Four Ways to Insert Values in Your App

#### 1. Using UI (by going to browser we can insert data)    
#### 2. Using DBeaver (by going into Dbeaver we can insert data by wrtiting sql command.)    
#### 3. Using seed way (to use this we need to go to our rails application then go into your db/seed.rb file. Then write your command Example :- table_name.create(column_name1: value1, column_name2: value2, ....)  in place of create we can write update/delete commands also. Then in the rails console run the command rails db:seed , then run the command rails db:migrate , then re-run the server and check for updated value)    
#### 4. Using Ruby Console (for vscode, run go to the app folder then run rails c (to run rails console, then put the same command ab above one ->  table_name.create(column_name1: value1, column_name2: value2, ....) and hit enter.))      


## string interpolation-> "this is my #{name_var}"   


## Installing gem    
### There are different ways to install gem    
#### 1. Navigate to you app. Go to Gemfile write -> gem "gem_name/package_name". Then go to console write command -> bundle install. This will fetch the file from official web rubygems.org and install it.    
#### 2. gem install <gem_name> or gem install <gem_name> -v <version_number>   

#### For Uninstall -> gem uninstall <gem_name>  

## for checking information about all your app's installed gem   
#### write command -> gem list  

### For info about gem -> gem info <gem name>


### Diff b/w gem install and bundle install

#### 1. Gem install installs a gem globally on your system (one gem at a time) and doesn’t use a Gemfile.   
#### 2. "bundle install" installs all gems required for the current project using the Gemfile.    
#### 3. Bundler also creates Gemfile.lock to keep the same gem versions for everyone.   
#### 4. Use gem install for tools like rails/bundler, and bundle install inside a Rails project.    