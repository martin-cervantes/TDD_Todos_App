require "rails_helper"

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo "Buy more milk"

    click_on "Mark complete"

    expect(page).to have_css '.todos li.completed', text: 'Buy more milk'
  end
end
