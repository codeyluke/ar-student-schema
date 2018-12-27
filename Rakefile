require 'rake'
require 'rspec/core/rake_task'
require_relative 'db/config'
require_relative 'lib/students_importer'
require_relative 'app/models/teacher'

desc "create the database"
task "db:create" do
  touch 'db/ar-students.sqlite3'
  touch 'db/ar-students_test.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/ar-students.sqlite3'
  rm_f 'db/ar-students_test.sqlite3'
end

desc "migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)."
task "db:migrate" do
  Dir[File.join('db', '*.sqlite3')].each do |db_path|
    ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/#{db_path}")
    ActiveRecord::Migrator.migrations_paths << File.dirname(__FILE__) + 'db/migrate'
    ActiveRecord::Migration.verbose = ENV["VERBOSE"] ? ENV["VERBOSE"] == "true" : true
    ActiveRecord::MigrationContext.new(ActiveRecord::Migrator.migrations_paths).migrate do |migration|
      ENV["SCOPE"].blank? || (ENV["SCOPE"] == migration.scope)
    end
  end
end

desc "populate the students database with sample data"
task "db:populate" do
  StudentsImporter.import
end

desc "populate the teachers database with sample data"
task "db:populate_teacher" do
  # Create some teachers for your teachers table in database
  Teacher.create(first_name: "herry",last_name: "dasan",email: "dasani@email.com",phone: "+6012311234")
  Teacher.create(first_name: "calum",last_name: "dasa",email: "calum@email.com",phone: "+6012311234")
  Teacher.create(first_name: "diana",last_name: "dan",email: "diana@email.com",phone: "+6012311234")
  Teacher.create(first_name: "leon",last_name: "dasani",email: "leon@email.com",phone: "+6012311234")
  Teacher.create(first_name: "malcolm",last_name: "mcgregor",email: "malcolm@email.com",phone: "+6012311234")
  Teacher.create(first_name: "dasani",last_name: "phone",email: "dasani@email.com",phone: "+6012311234")
  Teacher.create(first_name: "anda",last_name: "boy",email: "anda@email.com",phone: "+6012311234")
  Teacher.create(first_name: "jesus",last_name: "girl",email: "jesus@email.com",phone: "+6012311234")
  Teacher.create(first_name: "steve",last_name: "other",email: "steve@email.com",phone: "+6012311234")
  Teacher.create(first_name: "steve",last_name: "keluar",email: "keluar@email.com",phone: "+6012311234")
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

desc "Run the specs"
RSpec::Core::RakeTask.new(:specs)

task :default  => :specs
