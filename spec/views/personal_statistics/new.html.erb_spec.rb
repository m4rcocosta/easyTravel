require 'rails_helper'

RSpec.describe "personal_statistics/new", type: :view do
  before(:each) do
    assign(:personal_statistic, PersonalStatistic.new(
      :conteggio => 1,
      :partenza => "MyString",
      :arrivo => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new personal_statistic form" do
    render

    assert_select "form[action=?][method=?]", personal_statistics_path, "post" do

      assert_select "input[name=?]", "personal_statistic[conteggio]"

      assert_select "input[name=?]", "personal_statistic[partenza]"

      assert_select "input[name=?]", "personal_statistic[arrivo]"

      assert_select "input[name=?]", "personal_statistic[email]"
    end
  end
end
