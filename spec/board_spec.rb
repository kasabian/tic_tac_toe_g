require 'spec_helper'

describe TicTacToe::Board do
  it "should have 9 cells" do
    board = TicTacToe::Board.new
    board.cells.flatten.count.should == 9
  end
 

  it "should be full" do
   data_not_nil=[[1,0,1],[1,0,1],[1,0,1]]
   board = TicTacToe::Board.new(data_not_nil)
   board.should_not be_empty
   
  end  
  
  it "should not be full" do
   data_not_nil=[[1,0,nil],[1,0,nil],[1,0,nil]]
   board = TicTacToe::Board.new(data_not_nil)
   board.should_not be_empty
  end

#************

  context "initialize board" do
    it "should not rise exceptions with valid array size and valid data" do
      valid_data = [[0, 1, nil],[0, 1, nil],[0, 1, nil]]
      expect { TicTacToe::Board.new(valid_data) }.not_to raise_error(ArgumentError)
    end

    it "should not rise exceptions with no data" do
      expect { TicTacToe::Board.new }.not_to raise_error(ArgumentError)
    end

    it "should rise exceptions with not valid array size" do
      not_valid_data = [[0, 1, nil]*3]
      #если вызывает аргумент еррор
      expect { TicTacToe::Board.new(not_valid_data) }.to raise_error(ArgumentError)
    end

    it "should rise exceptions with invalid data" do
      invalid_data = [[0, 2, nil],[0, 2, nil],[0, 2, nil]] 
      expect { TicTacToe::Board.new(invalid_data) }.to raise_error(ArgumentError)
    end
  end

  
    
    context ".make_move" do
     
        it "should be move" do 
            board = TicTacToe::Board.new
            board.move(0,0,1)
            board.cells[0][0].should eq 1
      
        end    
    
      it "should second .move be ArgumentError " do 
          board = TicTacToe::Board.new
          board.move(0,0,1)
         expect { board.move(0,0,1) }.to raise_error(ArgumentError) 
          
          
      
      end
    
      it "should ArgumentError .move" do
        board = TicTacToe::Board.new
         expect { board.move(5,5,5) }.to raise_error(ArgumentError)
        
      end
    
  
       
  end  
  
  context ".clear" do

     it "should be clear" do 
   	data=[[1,0,1]]*3
   	board = TicTacToe::Board.new(data)
   	board.clear
   	board.should be_empty     
     end
  
  end  
  
  
   
  context ".empty?" do
    it "should be empty" do
      board = TicTacToe::Board.new([[nil, nil, nil],[nil, nil, nil],[nil, nil, nil]] )
      board.should be_empty
    end

#**************

    it "should not be empty" do
      board = TicTacToe::Board.new([[nil, 0, 1],[nil, 0, 1],[nil, 0, 1]])
      board.should_not be_empty
    end
  end
end
