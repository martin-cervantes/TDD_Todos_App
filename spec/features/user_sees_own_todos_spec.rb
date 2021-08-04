require "rails_helper"

feature "Users sees own todos" do
  scenario "Doesn't see others' todos" do
    Todo.create!(title: "Buy milk", email: "some_one_else@example.com")

    sign_in_as "some_one@example.com"

    expect(page).not_to have_css ".todos li", text: "Buy milk"
  end
end
