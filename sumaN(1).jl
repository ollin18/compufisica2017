


# function SumaFor

function SumaFor(N)
    suma=0
    for i ∈ 1:N
        suma+=i #es lo mismo que: suma=suma+i
    end
    println(suma)
end

function SumaWhile(N)
    suma=0
    i=1
    while i ≤ N
        suma+=i #es lo mismo que: suma=suma+i
        i+=1
    end
    println(suma)
end

SumaFor(100)
SumaWhile(10)