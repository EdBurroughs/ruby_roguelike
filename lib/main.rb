require_relative 'grid'
require_relative 'player'
require_relative 'display'

def main
  display = Display.new()
  grid = Grid.new(10,10)
  player = Player.new(1,1,grid)

  begin
    loop do
      display.clear
      display.render_char(player.row,player.column,'@')
      display.refresh
     
      #blocks execution waiting for key press.
      break if player.get_keypress == :quit
      
      
      

    end
  ensure
    display.close
  end
end

main