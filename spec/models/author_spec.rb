
describe "New author model", type: :model do
  it "should contain the attributes" do
    author = Author.new(first_name: "Alan", last_name: "Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.name).to eq("Alan Turing")
  end
end
