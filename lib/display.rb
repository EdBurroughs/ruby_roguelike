require 'curses'

class Display
  def initialize
    Curses.init_screen
    Curses.noecho
    Curses.stdscr.keypad(true) 
    Curses.curs_set(0)
  end


  def render_char(row,col,char)
    Curses.stdscr.setpos(row,col)
    Curses.stdscr.addstr(char)
  end

  def refresh = Curses.stdscr.refresh
  def clear = Curses.stdscr.clear
  def close = Curses.close_screen
end