class Grid
  def initialize(rows,columns)
    @rows = rows
    @columns = columns
    @cells = Array.new(rows) {Array.new(columns, :floor)}
  end

  def[](row,col)
    @cells[row][col]
  end

  def[]=(row,col,value)
    @cells[row][col] = value
  end
end