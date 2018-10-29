require 'rails_helper'

RSpec.describe "statistics/show", type: :view do
  before(:each) do
    @statistic = assign(:statistic, Statistic.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
