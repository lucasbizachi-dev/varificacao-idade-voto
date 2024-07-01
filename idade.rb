def voto(ano)
    atual = Time.now.year
    idade = atual - ano

    if idade < 16 
        return "Com #{idade} anos: NÃO VOTA."
    elsif (16..17).include?(idade) || idade > 65
        return "Com #{idade} anos: VOTO OPCIONAL."
    else
        return "Com #{idade} anos: VOTO OBRIGATÓRIO."
    end
end

puts "Em que ano você nasceu?"
nasc = gets.chomp.to_i
puts voto(nasc)