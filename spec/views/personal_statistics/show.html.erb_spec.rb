require 'rails_helper'

RSpec.describe "personal_statistics/show", type: :view do
  before(:each) do
    @personal_statistic = assign(:personal_statistic, PersonalStatistic.create!(
      :conteggio => 2,
      :partenza => "Partenza",
      :arrivo => "Arrivo",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Partenza/)
    expect(rendered).to match(/Arrivo/)
    expect(rendered).to match(/Email/)
  end
end
