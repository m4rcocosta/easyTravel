require 'rails_helper'

RSpec.describe "statistics/new", type: :view do
  before(:each) do
    assign(:statistic, Statistic.new())
  end

  it "renders new statistic form" do
    render

    assert_select "form[action=?][method=?]", statistics_path, "post" do
    end
  end
end
