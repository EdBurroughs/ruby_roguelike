class Player
  attr_accessor :row, :column

  def initialize(row,column,grid)
    @row = row
    @column = column
    @grid = grid
  end

  def get_keypress
    case Curses.stdscr.getch
    #movement
    when Curses::Key::UP then move(:up)
    when Curses::Key::DOWN then move(:down)
    when Curses::Key::LEFT then move(:left)
    when Curses::Key::RIGHT then move(:right)

    when 'q' then return :quit
    end
  end

  def move(direction)
    row = @row
    col = @column

    case direction
    when :up then row-=1
    when :down then row+=1
    when :left then col-=1
    when :right then col+=1
    end

    return unless @grid.valid_move?(row,col)
    @row, @column = row ,col
  
  end
end