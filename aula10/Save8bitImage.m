function Save8bitImage (Filename, Image)

    fp = fopen(Filename,'wb');
    [N,M] = size(Image);

    fwrite(fp, N, 'uint16');
    fwrite(fp, M, 'uint16');

    %{
    for i = 1: N
        for k = 1: M
            fwrite(fp, Image(i,k), 'uint8');
        end
    end
    %}
    
    % Mais eficiente
    fwrite(fp, Image, 'uint8');
    
    fclose(fp);
    
end
