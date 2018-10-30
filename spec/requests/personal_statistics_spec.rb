require 'rails_helper'

RSpec.describe "PersonalStatistics", type: :request do
  describe "GET /personal_statistics" do
    it "works! (now write some real specs)" do
      get personal_statistics_path
      expect(response).to have_http_status(200)
    end
  end
end
