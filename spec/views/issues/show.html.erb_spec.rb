require 'rails_helper'

RSpec.describe "issues/show", :type => :view do
  before(:each) do
    @issue = assign(:issue, Issue.create!(
      :project_id => 1,
      :tracker_id => 2,
      :subject => "Subject",
      :description => "MyText",
      :status_id => 3,
      :priority_id => 4,
      :author_id => 5,
      :assigned_to_id => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
