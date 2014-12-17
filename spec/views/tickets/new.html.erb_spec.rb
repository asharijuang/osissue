require 'rails_helper'

RSpec.describe "tickets/new", :type => :view do
  before(:each) do
    assign(:ticket, Ticket.new(
      :subject => "MyString",
      :description => "MyText",
      :project_id => "",
      :priority_id => "",
      :issue_status_id => ""
    ))
  end

  it "renders new ticket form" do
    render

    assert_select "form[action=?][method=?]", tickets_path, "post" do

      assert_select "input#ticket_subject[name=?]", "ticket[subject]"

      assert_select "textarea#ticket_description[name=?]", "ticket[description]"

      assert_select "input#ticket_project_id[name=?]", "ticket[project_id]"

      assert_select "input#ticket_priority_id[name=?]", "ticket[priority_id]"

      assert_select "input#ticket_issue_status_id[name=?]", "ticket[issue_status_id]"
    end
  end
end
