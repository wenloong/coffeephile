require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      title: "MyString",
      post: "MyString",
      numLikes: "",
      numComments: "",
      img: "MyString",
      username: "MyString"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input[name=?]", "article[title]"

      assert_select "input[name=?]", "article[post]"

      assert_select "input[name=?]", "article[numLikes]"

      assert_select "input[name=?]", "article[numComments]"

      assert_select "input[name=?]", "article[img]"

      assert_select "input[name=?]", "article[username]"
    end
  end
end
