FactoryGirl.define do
  factory :issue do
    project_id 1
tracker_id 1
subject "MyString"
description "MyText"
status_id 1
priority_id 1
due_date "2015-01-04"
author_id 1
assigned_to_id 1
  end

end
