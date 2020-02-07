require 'game'
describe Game do 
  let (:ellie) {Player.new("Ellie")}
  let (:joe) {Player.new("Joe")}
  let (:game) {Game.new("Ellie", "Joe")}
  it 'should respond to the attack method' do
    expect(game).to respond_to(:attack)
  end 

  it 'player two should receive damage' do
    expect(joe).to receive(:receive_damage)
    game.attack(joe)
  end 
end 