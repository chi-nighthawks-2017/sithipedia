

require 'rails_helper'

RSpec.describe Version, type: :model do
    let(:author) {User.create(
                          username: "DarthDarth",
                          email: "darth@darth.com",
                          password: "darth"
                        )}

  let(:category) {Category.create(name: "Test Category")}

  let(:version) {Version.new(
                            author_id: 1,
                            editor_id: 1,
                            title: "Test",
                            body: "This is a test paragraph",
                            category_id: 1,
                            published: true
                           )}
end
