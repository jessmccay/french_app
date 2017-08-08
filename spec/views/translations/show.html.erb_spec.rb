require 'rails_helper'

RSpec.describe "translations/show", type: :view do
  before(:each) do
    @translation = assign(:translation, Translation.create!(
      :french => "French",
      :english => "English"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/French/)
    expect(rendered).to match(/English/)
  end
end
