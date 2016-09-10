%Programa que llama a la función

[ nombreImagen, rutaImagen ] = uigetfile(  { '*.tiff'; ...
                                    '*.jpg'; '*.bmp';...
                                    '*.gif'; '*.*' }, ...
                                    'Seleccionar Imagen' ); 
imagen = imread( [ rutaImagen, nombreImagen ] );
 
%Factor de compresion
factor = input('Ingrese el factor de compresion: ');
imagenComprimida = jpg( imagen, factor );

%imwrite( imagenComprimida, 'Imagen.jpg','jpg' );

subplot( 1, 2, 1 ), imshow( imagen );
subplot( 1, 2, 2 ), imshow( imagenComprimida );

