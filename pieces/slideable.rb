module Slideable
  def available_moves
    # Inicializa un array para almacenar los movimientos válidos
    moves = []

    # Itera a través de las direcciones definidas por el método move_dirs
    move_dirs.each do |(dr, dc)|
      current_r, current_c = location

      # Comienza un bucle para explorar en la dirección actual
      loop do
        current_r += dr
        current_c += dc
        loc = [current_r, current_c]

        # Comienza un bucle para explorar en la dirección actual
        break if !board.in_bounds?(loc)
        
        # Si la nueva ubicación está vacía, es un movimiento válido
        if board.empty?(loc)
          moves << loc
        end      
        
        # Si hay una pieza enemiga en la nueva ubicación, es un movimiento válido y luego termina el bucle
        if enemy?(loc)
          moves << loc
          break
        end
      end
    end

    # Devuelve el array de movimientos válidos
    moves
  end
end