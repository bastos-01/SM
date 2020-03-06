function [N, M, Stream] = Load8bitStream(Filename)
    fp = fopen(Filename, 'rb');
    N = fread(fp, 1, 'uint16');
    M = fread(fp, 1, 'uint16');
    Stream = fread(fp, 'uint8');
    fclose(fp);