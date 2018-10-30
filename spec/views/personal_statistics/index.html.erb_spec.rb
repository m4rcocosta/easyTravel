require 'rails_helper'

RSpec.describe "personal_statistics/index", type: :view do
  before(:each) do
    assign(:personal_statistics, [
      PersonalStatistic.create!(
        :conteggio => 2,
        :partenza => "Partenza",
        :arrivo => "Arrivo",
        :email => "Email"
      ),
      PersonalStatistic.create!(
        :conteggio => 2,
        :partenza => "Partenza",
        :arrivo => "Arrivo",
        :email => "Email"
      )
    ])
  end

  it "renders a list of personal_statistics" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Partenza".to_s, :count => 2
    assert_select "tr>td", :text => "Arrivo".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
