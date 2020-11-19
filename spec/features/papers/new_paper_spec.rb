require 'rails_helper'

describe "New paper page", type: :feature do

  it "should render without error" do
    visit new_paper_path
  end

  it "should have text inputs for a paper's title, venue, and year" do
    visit new_paper_path

    # these are the standard names given to inputs by the form builder
    expect(page).to have_field('paper[title]')
    expect(page).to have_field('paper[venue]')
    expect(page).to have_field('paper[year]')
  end

  it "should display validation errors" do
    visit new_paper_path

    fill_in 'paper[venue]', :with => "Potsdam"
    fill_in 'paper[title]', :with => ""
    click_button 'commit'

    expect(page).to have_selector(:id, 'error_explanation')
  end

end