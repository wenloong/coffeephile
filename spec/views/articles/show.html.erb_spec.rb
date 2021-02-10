require 'rails_helper'

RSpec.describe "articles/show", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      title: "Title",
      post: "Post",
      numLikes: "",
      numComments: "",
      img: "Img",
      username: "Username"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Post/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Img/)
    expect(rendered).to match(/Username/)
  end
end
