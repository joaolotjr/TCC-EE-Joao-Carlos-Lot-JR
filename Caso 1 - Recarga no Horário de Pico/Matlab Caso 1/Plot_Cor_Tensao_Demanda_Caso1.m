
clc;
%Códigos de plots De Tensão e Corrente Máxima demnadada e potência Diaria 
%------------------------------------------------------
%Abrir os Arquivos a seguir para realizar o plot:
%"S1kVA.mat","S2kVA.mat" e "S3kVA.mat" para Demanda.
%"pu1.mat","pu2.mat","pu3.mat", Para a Tensão.
%"I1_1.mat", "I1_2.mat", "I1_3.mat" Para a corrente. 

%Codigo de Plot da Tensão demandada Maxima em pu 

Buss = 1:1:373;

H(1) = 0;
for k = 2: length(S1kVA_Caso1)
H(k) = H(k-1)+1;
end


figure
plot(Buss,pu1_Caso1,'r')
hold on
plot(Buss,pu2_Caso1,'g')
plot(Buss,pu3_Caso1,'b')
hold off
ylim([0.90,1]);
title('Tensão nas Barras no cenário de Demanda Máxima - Caso 1');
xlabel('Barras');
ylabel('Tensão em pu');
legend('Fase A','Fase B','Fase C')


%Codigo de Plot da Corrente demandada Máxima

figure
plot(I1_1_Caso1,'r')
hold on
plot(I1_2_Caso1,'g')
plot(I1_3_Caso1,'b')
hold off
%ylim([400,1000]);
title('Corrente Nas Linhas no cenário de Demanda Máxima- Caso 1');
xlabel('Linhas');
ylabel('Corrente (A)');
legend('Fase A','Fase B','Fase C')


%Codigo de Plot da potência Diaria do Alimentador 


figure
plot(H,S1kVA_Caso1,'r')
hold on
plot(H,S2kVA_Caso1,'g')
plot(H,S3kVA_Caso1,'b')
hold off
%ylim([400,1000]);
title('Potência Demanda Diaria - Caso 1 ');
xlabel('Horas');
ylabel('S (kVA)');
legend('Fase A','Fase B','Fase C')

%Potencia total diária no alimentador

Energia_total_C1 = 0;
for i = 1:25
Energia_total_C1 = S1kVA_Caso1(i)*(1000) + Energia_total_C1 ;   
end
Potencia_total_C1 = Energia_total_C1 * 3;
Potencia_total_C1




