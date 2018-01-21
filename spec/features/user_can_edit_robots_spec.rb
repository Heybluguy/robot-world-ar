require 'spec_helper'

describe 'as a user' do
  it 'i can edit a robot' do
    robot = Robot.create(name: "Botty McBotson",
                         city: "Cyborg City",
                         state: "Internetopia",
                         department: "Finance"
                        )

    visit "/robots/#{robot.id}/edit"

    fill_in "robot[name]",	with: "Bb-8"
    fill_in "robot[city]",	with: "Jakku"
    fill_in "robot[state]",	with: "Planet"
    fill_in "robot[department]",	with: "Copilot"
    click_on "Submit"

    expect(page).to have_content("Bb-8")
    expect(page).to have_content("Jakku")
    expect(page).to have_content("Planet")
    expect(page).to have_content("Copilot")
  end
end