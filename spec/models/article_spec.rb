
require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:author) {User.create(
                          username: "DarthDarth",
                          email: "darth@darth.com",
                          password: "darth"
                        )}

  let(:category) {Category.create(name: "Test Category")}

  let(:article) {Article.new(
                            author_id: 1,
                            editor_id: 1,
                            title: "Test",
                            body: "This is a test paragraph",
                            category_id: 1,
                            published: true
                           )}
  it "has a title" do
    expect(article.title).to eq "Test"
  end

  it "has a body" do
    expect(article.body).to eq "This is a test paragraph"
  end

  it "can be published" do
    expect(article.published).to be true
  end

  it "can be a draft" do
    article.published = false
    expect(article.published).to be false
  end

  it "has an author" do
    article.author.username = "DarthDarth"
  end

  it "has a category" do
    article.category.name = "Test Category"
  end

end
