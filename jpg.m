%Compresion JPG

function [ imagenComprimida ] = jpg( imagenOriginal , factorCalidad )

    [ filas , columnas ] = size( imagenOriginal );
    
    if factorCalidad > 50
        factorCalidad = ( 100 - factorCalidad ) / 50;
    else
        if factorCalidad < 50
            factorCalidad = 50 / factorCalidad;
        else 
            factorCalidad = 1;
        end
    end