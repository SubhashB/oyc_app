require 'spec_helper'

describe "bills/index.html.erb" do
  before(:each) do
    assign(:bills, [
      stub_model(Bill,
        :amount => 1.5,
        :quantity => 1
      ),
      stub_model(Bill,
        :amount => 1.5,
        :quantity => 1
      )
    ])
  end

  it "renders a list of bills" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
