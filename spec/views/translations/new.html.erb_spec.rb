require 'rails_helper'

RSpec.describe "translations/new", type: :view do
  before(:each) do
    assign(:translation, Translation.new(
      :french => "MyString",
      :english => "MyString"
    ))
  end

  it "renders new translation form" do
    render

    assert_select "form[action=?][method=?]", translations_path, "post" do

      assert_select "input#translation_french[name=?]", "translation[french]"

      assert_select "input#translation_english[name=?]", "translation[english]"
    end
  end
end
