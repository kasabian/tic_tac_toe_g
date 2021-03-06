require 'spec_helper'


describe TicTacToe::Game do
 context "Finished" do
 
   before(:each) do
     @game=TicTacToe::Game.new
   end

    it "should return X winner" do
     arg=  [[1,0,nil],
            [0,1,1],
            [0,1,1]]
     @game.finish_game(arg).should eq "X" 
    end  
    
    it "should return O winner" do
      arg=[[0,0,0],
           [0,0,1],
           [ nil,1,1]]
      @game.finish_game(arg).should eq "0" 
    end

    it "should return no winner" do
       arg=[[1,0,0],
            [0,1,1],
            [0,1,0]]
      @game.finish_game(arg).should eq "no winner" 
        
    end
    
    it "should no finish return nil" do
      arg=[[1,0,0],[nil,nil,nil],[nil,nil,nil]]
      @game.finish_game(arg).should eq nil 
      
    end

 
  end
  
 
   
end
