describe "Soundly::CLI" do
# Soundly::CLI.call
  it "Greets the user" do
    expect{ Soundly::CLI.call }.to output("Main Menu").to_stdout
  end
end