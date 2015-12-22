function [ff] = frek(nota,oktav)

% notalar� bir arraye at
notalar = ['Sus','Do','Dod', 'Re', 'Mi' ,'Mib' ,'Fa', 'Fad', 'Sol', 'Sold', 'La', 'Si', 'Sib'];

% referans
ref = 16.35;

% array�n boyutu
nsize = length(notalar);

% http://stackoverflow.com/questions/8590478/how-to-check-whether-an-argument-is-supplied-in-function-call

if ~exist('oktav','var') || isempty(oktav)
  oktav = 4;
end

% oktavlar� gez [0-8]
for oIndex=0:8
    % parametre oktav gezerken denk gelirse
       if oIndex == oktav
           % notalar�n boyutu kadar for
           for j=1:nsize
               % char -> karakter array'�na �evir
               % e�er dizinin i�inde bakt���m�z nota girilen ise.s
               if nota==char(notalar(j))
                   % frekans form�l�
                    ff=2^oIndex*(2^((j-1)/12)*ref)
               end  
            end
        end
    end
end

% �rnek ��kt�

    % frek('A',0);
    % ff = 16.3500