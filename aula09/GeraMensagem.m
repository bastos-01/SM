function [NumBits, NumBPS] = GeraMensagem(f, CompMesg, nBits)

    %codigo do stor
    pd = makedist('Multinomial', 'probabilities', f/sum(f));
    Mesg = random(pd, CompMesg, 1);
    
    NumBits=0;
    for n=1 : length(f)
        NumBits = NumBits + sum(Mesg==n) * nBits(n);
    end
    NumBPS = NumBits/CompMesg;



end