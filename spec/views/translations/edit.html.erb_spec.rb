require 'rails_helper'

RSpec.describe "translations/edit", type: :view do
  before(:each) do
    @translation = assign(:translation, Translation.create!(
      :french => "MyString",
      :english => "MyString"
    ))
  end

  it "renders the edit translation form" do
    render

    assert_select "form[action=?][method=?]", translation_path(@translation), "post" do

      assert_select "input#translation_french[name=?]", "translation[french]"

      assert_select "input#translation_english[name=?]", "translation[english]"
    end
  end
end
