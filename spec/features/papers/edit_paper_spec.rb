require 'rails_helper'

describe "Edit paper page", type: :feature do

  it "should render without error" do
    paper = Paper.create(title: "MyPaper")
    visit edit_paper_path(paper)
  end

  it "should have text inputs for an paper's title, venue, and year" do
    paper = Paper.create(title: "Truing")
    visit edit_paper_path(paper)

    # these are the standard names given to inputs by the form builder
    expect(page).to have_field('paper[title]')
    expect(page).to have_field('paper[venue]')
    expect(page).to have_field('paper[year]')
  end

  it "should display validation errors" do
    paper = Paper.create(title: "Truing")
    visit edit_paper_path(paper)

    fill_in 'paper[title]', :with => ""
    fill_in 'paper[venue]', :with => "Alan"
    click_button 'commit'

    expect(page).to have_selector(:id, 'error_explanation')
  end

end