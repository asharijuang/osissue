require 'rails_helper'

RSpec.describe "tickets/index", :type => :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        :subject => "Subject",
        :description => "MyText",
        :project_id => "",
        :priority_id => "",
        :issue_status_id => ""
      ),
      Ticket.create!(
        :subject => "Subject",
        :description => "MyText",
        :project_id => "",
        :priority_id => "",
        :issue_status_id => ""
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
