require 'rails_helper'

describe "Edit author page", type: :feature do

  it "should render without error" do
    author = Author.create(last_name: "Truing")
    visit edit_author_path(author)
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    author = Author.create(last_name: "Truing")
    visit edit_author_path(author)

    # these are the standard names given to inputs by the form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should display validation errors" do
    author = Author.create(last_name: "Truing")
    visit edit_author_path(author)

    fill_in 'author[first_name]', :with => "Alan"
    fill_in 'author[last_name]', :with => ""
    click_button 'commit'

    expect(page).to have_selector(:id, 'error_explanation')
  end

end