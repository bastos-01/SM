function Save8bitStream(Filename, N, M, Stream)
    
    fp = fopen(Filename,'wb');

    fwrite(fp, N, 'uint16');
    fwrite(fp, M, 'uint16');
    
    fwrite(fp, Stream, 'uint8');
    
    fclose(fp);
end