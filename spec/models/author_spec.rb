
describe "New author model", type: :model do
  it "should contain the attributes" do
    author = Author.new(first_name: "Hallo")
    expect(author.first_name).to eq("Hallo")
  end
end
