require 'spec_helper'


describe TicTacToe::Player do

  it "should have a player name" do
    player=TicTacToe::Player.new ("Player")
    player.name.should eq "Player"

  end


 it "should not have player_name" do
     expect { TicTacToe::Player.new }.to raise_error(ArgumentError)

  end




end
