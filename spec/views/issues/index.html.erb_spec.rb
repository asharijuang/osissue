require 'rails_helper'

RSpec.describe "issues/index", :type => :view do
  before(:each) do
    assign(:issues, [
      Issue.create!(
        :project_id => 1,
        :tracker_id => 2,
        :subject => "Subject",
        :description => "MyText",
        :status_id => 3,
        :priority_id => 4,
        :author_id => 5,
        :assigned_to_id => 6
      ),
      Issue.create!(
        :project_id => 1,
        :tracker_id => 2,
        :subject => "Subject",
        :description => "MyText",
        :status_id => 3,
        :priority_id => 4,
        :author_id => 5,
        :assigned_to_id => 6
      )
    ])
  end

  it "renders a list of issues" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
