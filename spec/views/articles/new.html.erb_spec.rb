require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      title: "MyString",
      post: "MyString",
      numLikes: "",
      numComments: "",
      img: "MyString",
      username: "MyString"
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input[name=?]", "article[title]"

      assert_select "input[name=?]", "article[post]"

      assert_select "input[name=?]", "article[numLikes]"

      assert_select "input[name=?]", "article[numComments]"

      assert_select "input[name=?]", "article[img]"

      assert_select "input[name=?]", "article[username]"
    end
  end
end
