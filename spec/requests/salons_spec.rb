require 'rails_helper'

RSpec.describe "Salons", type: :request do
  describe "GET /salons" do
    it "works! (now write some real specs)" do
      get salons_path
      expect(response).to have_http_status(200)
    end
  end
end
