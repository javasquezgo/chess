class BoardRendererText
  # Permite acceder y modificar el atributo board desde fuera de la clase
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  # Permite acceder y modificar el atributo board desde fuera de la clase
  def render

    # Itera sobre las filas del tablero
    8.times do |r|
      puts "---------------"

      # Itera sobre las columnas del tablero
      8.times do |c|
        # Imprime la representación de la pieza (o un espacio si es NullPiece)
        piece = board[[r, c]]
        print "#{board[[r, c]]} "
      end
      puts ""
    end
    puts "---------------"
  end
end