require 'rails_helper'

describe "creating a post" do

  it "allows the logged in user to create a new post" do
    user = FactoryGirl.create(:user)
    login(user)
    visit user_path(user)
    click_on "New Post"
    fill_in :post_title, with: "My First Post"
    fill_in :post_content, with: "Here is my first post. Isn't it great?!"
    click_on "Create Post"
    expect(page).to have_content "My First Post"
  end

end
