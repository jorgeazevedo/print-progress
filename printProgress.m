function printProgress(start,finish,i)
    persistent ticId;

    if i == start
        ticId = tic;
        fprintf(1,'Progress:      ');
    end
    
    fprintf(1,'\b\b\b\b\b\b %3d %%',floor((i-start)/(finish-start)*100));

    if i == finish
        fprintf(1,' (%4.2f s)\n',toc(ticId));
        clear ticId
    end
end
