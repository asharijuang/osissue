require 'rails_helper'

RSpec.describe "tickets/edit", :type => :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :subject => "MyString",
      :description => "MyText",
      :project_id => "",
      :priority_id => "",
      :issue_status_id => ""
    ))
  end

  it "renders the edit ticket form" do
    render

    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do

      assert_select "input#ticket_subject[name=?]", "ticket[subject]"

      assert_select "textarea#ticket_description[name=?]", "ticket[description]"

      assert_select "input#ticket_project_id[name=?]", "ticket[project_id]"

      assert_select "input#ticket_priority_id[name=?]", "ticket[priority_id]"

      assert_select "input#ticket_issue_status_id[name=?]", "ticket[issue_status_id]"
    end
  end
end
