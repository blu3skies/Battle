require 'game'
describe Game do 
  let (:game) {Game.new }
  let (:ellie) {Player.new("Ellie")}
  let (:joe) {Player.new("Joe")}
  it 'should respond to the attack method' do
    expect(game).to respond_to(:attack)
  end 

  it 'player two should receive damage' do
    expect(joe).to receive(:receive_damage)
    game.attack(joe)
  end 
end 