function Stream = EncodeImage_LZ772(Image, Nw, Mw)
    [N, M] = size(Image);
    Image = Image';
    Image = Image(:);
    [~, ~, Im] = unique(Image);
    Stream = Im(1:Nw);
    pos = Nw + 1;
    
    while pos <= length(Im)
        Window = Im(pos - Nw:pos - 1);
        Mw_end = min(pos + Mw - 1, length(Im));
        Seq = Im(pos:Mw_end);
        
        pos_common = 0;
        len_common = 1;
        for k = 1:length(Seq)
            ind = strfind(Window', Seq(1:k)');
            if isempty(ind)
                if pos_common > 0
                    Stream(end + 1) = uint8(pos_common + 128);
                    Stream(end + 1) = uint8(len_common);
                else
                    Stream(end + 1) = uint8(Seq(1));
                end
                break;
            end
            pos_common = ind(1);
            len_common = k;
            if k == length(Seq)
                Stream(end + 1) = uint8(pos_common + 128);
                Stream(end + 1) = uint8(len_common);
            end
        end
        pos = pos + len_common;
    end
end