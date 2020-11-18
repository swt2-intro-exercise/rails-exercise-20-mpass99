require 'rails_helper'

describe "authors index page", type: :feature do

  it "should render without error" do
    visit authors_path
  end

  it "should have a link to create a new user" do
    visit authors_path

    expect(page).to have_link 'New', href: new_author_path
  end

  it "should have a link to edit a user" do
    new_author = Author.create(first_name: "Alan", last_name: "Turing")
    visit authors_path

    expect(page).to have_link 'Edit', href: edit_author_path(new_author.reload.id)
  end

  it "should have a link to delete a user" do
    new_author = Author.create(first_name: "Alan", last_name: "Turing")
    visit authors_path

    expect(page).to have_link 'Delete', href: edit_author_path(new_author.reload.id)
  end

  it "should have a table" do
    visit authors_path

    expect(page).to have_table
  end

end