require 'rails_helper'

RSpec.describe "statistics/index", type: :view do
  before(:each) do
    assign(:statistics, [
      Statistic.create!(),
      Statistic.create!()
    ])
  end

  it "renders a list of statistics" do
    render
  end
end
