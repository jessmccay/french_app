require 'rails_helper'

RSpec.feature "RegisterUsers", type: :feature do
  context "Landing page" do
    Steps "Going to Landing page" do
      Given "I visit localhost 3000:" do
        visit "/"
      end
      Then "I see Welcome!" do
        expect(page).to have_content("Welcome!")
      end
    end
  end
end
