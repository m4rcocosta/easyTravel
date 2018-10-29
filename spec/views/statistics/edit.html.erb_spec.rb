require 'rails_helper'

RSpec.describe "statistics/edit", type: :view do
  before(:each) do
    @statistic = assign(:statistic, Statistic.create!())
  end

  it "renders the edit statistic form" do
    render

    assert_select "form[action=?][method=?]", statistic_path(@statistic), "post" do
    end
  end
end
