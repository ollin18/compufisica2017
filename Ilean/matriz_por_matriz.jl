function mat_x_mat(A,B)
    ren_A = size(A)[1]
    col_A = size(A)[2]
    ren_B = size(B)[1]
    col_B = size(B)[2]    
    renglon_res = []
    for renglonA in 1:ren_A
        columna_res = []
        columna_res = columna_res'
        for columnaB in 1:col_B
            columna_res=hcat(columna_res,ProdInt(A[renglonA,:],B[:,columnaB]))
        end
        renglon_res=vcat(renglon_res,columna_res)
    end
    renglon_res
end
