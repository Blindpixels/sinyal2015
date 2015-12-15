function [ff] = frek(nota,oktav)

% notalar� bir arraye at
notalar = ['A','B','C','D','E','F','G','a','b','d','e','f'];

% referans
ref = 16.35;

% array�n boyutu
nsize = length(notalar);

% oktavlar� gez [0-8]
for oIndex=0:8
    % parametre oktav gezerken denk gelirse
       if oIndex == oktav
           % notalar�n boyutu kadar for
           for j=1:nsize
               if nota==char(notalar(j))
                    ff=2^oIndex*(2^((j-1)/12)*ref)
               end  
            end
        end
    end
end

% �rnek ��kt�

    % frek('A',0);
    % ff = 16.3500