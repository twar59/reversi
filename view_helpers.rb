helpers do
    def draw_piece(char)
      if char == 'X'
        'X'
      elsif char == 'O'
        'O'
      else
        '&nbsp;'
      end
    end
end
