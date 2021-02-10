require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        title: "Title",
        post: "Post",
        numLikes: "",
        numComments: "",
        img: "Img",
        username: "Username"
      ),
      Article.create!(
        title: "Title",
        post: "Post",
        numLikes: "",
        numComments: "",
        img: "Img",
        username: "Username"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Post".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Img".to_s, count: 2
    assert_select "tr>td", text: "Username".to_s, count: 2
  end
end
