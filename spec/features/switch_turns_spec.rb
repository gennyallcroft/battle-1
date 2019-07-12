feature 'Player switches turn' do
    scenario 'switch turns so player2 can take a turn' do
        sign_in_and_play
        click_link "Attack"
        click_link "Back"
        click_link "Switch turns!"
        click_link "Attack"
        expect(page).to have_content "Will: 50HP"
    end
end
