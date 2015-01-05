require 'rails_helper'

RSpec.describe "issues/edit", :type => :view do
  before(:each) do
    @issue = assign(:issue, Issue.create!(
      :project_id => 1,
      :tracker_id => 1,
      :subject => "MyString",
      :description => "MyText",
      :status_id => 1,
      :priority_id => 1,
      :author_id => 1,
      :assigned_to_id => 1
    ))
  end

  it "renders the edit issue form" do
    render

    assert_select "form[action=?][method=?]", issue_path(@issue), "post" do

      assert_select "input#issue_project_id[name=?]", "issue[project_id]"

      assert_select "input#issue_tracker_id[name=?]", "issue[tracker_id]"

      assert_select "input#issue_subject[name=?]", "issue[subject]"

      assert_select "textarea#issue_description[name=?]", "issue[description]"

      assert_select "input#issue_status_id[name=?]", "issue[status_id]"

      assert_select "input#issue_priority_id[name=?]", "issue[priority_id]"

      assert_select "input#issue_author_id[name=?]", "issue[author_id]"

      assert_select "input#issue_assigned_to_id[name=?]", "issue[assigned_to_id]"
    end
  end
end
