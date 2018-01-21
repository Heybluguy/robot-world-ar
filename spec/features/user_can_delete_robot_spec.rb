require 'spec_helper'

describe "as a user" do
  it "i can delete a robot" do
    robot = Robot.create(name: "Botty McBotson",
                         city: "Cyborg City",
                         state: "Internetopia",
                         department: "Finance"
                        )

    visit "/robots"

    click_on "delete"

    expect(current_path).to eq('/robots')
    expect(page).not_to have_content("Botty McBotson")
  end
end
