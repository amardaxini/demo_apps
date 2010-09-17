# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.delete_all
Project.delete_all
Milestone.delete_all
Task.delete_all
u = User.create(:name=>'Amar Daxini',:email=>'amardaxini@gmail.com',:password=>'Admin123')
p = Project.create(:name=>"Default Project",:description=>"Default project",:manager_id=>u.id)
p.milestones.create(:name=>"Default Milestone",:description=>"Default Milestone")
