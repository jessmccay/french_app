require 'rails_helper'

RSpec.describe "translations/index", type: :view do
  before(:each) do
    assign(:translations, [
      Translation.create!(
        :french => "French",
        :english => "English"
      ),
      Translation.create!(
        :french => "French",
        :english => "English"
      )
    ])
  end

  it "renders a list of translations" do
    render
    assert_select "tr>td", :text => "French".to_s, :count => 2
    assert_select "tr>td", :text => "English".to_s, :count => 2
  end
end
