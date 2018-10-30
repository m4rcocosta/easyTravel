require 'rails_helper'

RSpec.describe "personal_statistics/edit", type: :view do
  before(:each) do
    @personal_statistic = assign(:personal_statistic, PersonalStatistic.create!(
      :conteggio => 1,
      :partenza => "MyString",
      :arrivo => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit personal_statistic form" do
    render

    assert_select "form[action=?][method=?]", personal_statistic_path(@personal_statistic), "post" do

      assert_select "input[name=?]", "personal_statistic[conteggio]"

      assert_select "input[name=?]", "personal_statistic[partenza]"

      assert_select "input[name=?]", "personal_statistic[arrivo]"

      assert_select "input[name=?]", "personal_statistic[email]"
    end
  end
end
