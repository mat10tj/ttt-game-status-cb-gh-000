# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]


def won?(board)
  top_row = WIN_COMBINATIONS[0]
  middle_row = WIN_COMBINATIONS[1]
  bottom_row = WIN_COMBINATIONS[2]
  leftCol = WIN_COMBINATIONS[3]
  midCol = WIN_COMBINATIONS[4]
  rightCol = WIN_COMBINATIONS[5]
  leftDiag = WIN_COMBINATIONS[6]
  rightDiag = WIN_COMBINATIONS[7]
  board.each.any? do |rowWin|
    if rowWin == WIN_COMBINATIONS
      return
    end
  end
board.each.all? do |string|
  if string == "" || string == " "
  return false
end
  board.each do |tie|
    if tie =="" || tie == " "
      return false
    end
  end
  board.each.all? do |any|
    if any == "X" && "O"
      return false
    end
  end
end
end
