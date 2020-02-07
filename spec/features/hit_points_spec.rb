feature 'View hit points' do
    scenario 'see Player 2 hit points' do
        sign_in_and_play
        expect(page).to have_content 'Ellie: 60HP'
    end
end

#     scenario 'can attack' do
#         sign_in_and_play
#         click_button 'Attack'
#         expect(page).to have_content 'Richard Attacked Ellie'
#     end

    # scenario "can reduce p2 hp by 10" do
    #     sign_in_and_play
    #     click_button 'Attack'
    #     click_link 'OK'
    #     expect(page).not_to have_content "Richard's Hit Points: 60HP"
    #     expect(page).to have_content "Richard's Hit Points: 50HP"
    # end
# end

# below was in play.erb file
# <a href="/attack">Attack</a>

# <h2><%=@player_1_name%>'s Hit Points: <%=@player_1_hp%>HP</h2>
# <form action="/attack" method="get">
#     <input type="submit" value="Attack">
# </form>
# <h2><%=@player_2_name%>'s Hit Points: <%=@player_2_hp%>HP</h2>

# <% end %>