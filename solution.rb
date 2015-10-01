#Solution File
class Nodo
    attr_accessor :dato, :nextnodo
    def initialize d, nextn
        @dato = d
        @nextnodo = nextn
    end
end

class ListaLigada
    def initialize d
        @head = Nodo.new(d, nil)
    end
    
    def add(dato)
        pos = @head
        while pos.nextnodo != nil
            pos = pos.nextnodo
        end
        pos.nextnodo = Nodo.new(d, nil)
        self
    end
    
    
    def delete(d)
        pos = @head
        if pos.dato == d
            @head = @head.nextnodo
        else
            pos = @head
            while (pos != nil) && (pos.nextnodo != nil) && ((pos.nextnodo).dato != d)
                pos = pos.nextnodo
            end
            if (pos != nil) && (pos.nextnodo != nil)
                pos.nextnodo = (pos.nextnodo).nextnodo
            end
        end
    end


    def displayLista
        pos = @head
        guardarlista = []
        while pos.nextnodo != nil
            guardarlista += [pos.dato]
            pos = pos.nextnodo
        end
        guardarlista += [pos.dato]
        puts guardarlista.join(", ")
    end
end
        
            
# Declaración de una nueva lista
lista = ListaLigada.new(5)

lista.add(9)
lista.add(E)
lista.add(5)
lista.add(2.3)
lista.add(8)
lista.display
ll.delete(5)
ll.display

