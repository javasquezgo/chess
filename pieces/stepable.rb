module Stepable
  def available_moves

    # Inicializa un array para almacenar los movimientos válidos
    moves = []

     # Itera a través de las direcciones definidas por el método move_dirs
    move_dirs.each do |(dr, dc)|
      current_r, current_c = location

      # Avanza una casilla en la dirección actual
      current_r += dr
      current_c += dc
      loc = [current_r, current_c]

      # Salta a la siguiente iteración si la nueva ubicación no está dentro del tablero
      next if !board.in_bounds?(loc)

      # Si la nueva ubicación está vacía o tiene una pieza enemiga, es un movimiento válido
      if board.empty?(loc) || enemy?(loc)
        moves << loc
      end      
    end

    # Devuelve el array de movimientos válidos
    moves
  end
end