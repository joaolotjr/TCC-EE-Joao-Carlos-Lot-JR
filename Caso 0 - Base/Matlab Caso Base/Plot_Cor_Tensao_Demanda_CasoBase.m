
clc;
%Códigos de plots De Tensão e Corrente Máxima demnadada e potência Diaria 
%------------------------------------------------------
%Abrir os Arquivos a seguir para realizar o plot:
%"S1kVA.mat","S2kVA.mat" e "S3kVA.mat" para Demanda.
%"pu1.mat","pu2.mat","pu3.mat", Para a Tensão.
%"I1_1.mat", "I1_2.mat", "I1_3.mat" Para a corrente. 
% 
% %Codigo de Plot da Tensão demandada Maxima em pu 
% 
% Buss = 1:1:373;
% H(1) = 0;
% for k = 2: length(S1kVA_CasoBase)
% H(k) = H(k-1)+1;
% end
% 
% figure
% plot(Buss,pu1_CasoBase,'r')
% hold on
% plot(Buss,pu2_CasoBase,'g')
% plot(Buss,pu3_CasoBase,'b')
% hold off
% ylim([0.90,1]);
% title('Tensão nas Barras no cenário de Demanda Máxima - Caso Base');
% xlabel('Barras');
% ylabel('Tensão em pu');
% legend('Fase A','Fase B','Fase C')
% 
% 
% %Codigo de Plot da Corrente demandada Máxima
% 
% figure
% plot(I1_1_CasoBase,'r')
% hold on
% plot(I1_2_CasoBase,'g')
% plot(I1_3_CasoBase,'b')
% hold off
% %ylim([400,1000]);
% title('Corrente Nas Linhas no cenário de Demanda Máxima - Caso Base');
% xlabel('Linhas');
% ylabel('Corrente (A)');
% legend('Fase A','Fase B','Fase C')


%Codigo de Plot da potência Diaria do Alimentador 


figure
plot(H,S1kVA_CasoBase,'g')
hold on
plot(H,S2kVA_Caso1,'r')
plot(H,S1kVA_Caso2,'b')
hold off
%ylim([400,1000]);
title('Comparação da Demanda Diaria dos casos estudados. ');
xlabel('Horas');
ylabel('S (kVA)');
legend('Caso Base','Caso 1','Caso 2')

%Potencia total diária no alimentador

% Energia_total_CB = 0;
% for i = 1:25
% Energia_total_CB = S1kVA_CasoBase(i)*(1000) + Energia_total_CB ;   
% end
% Potencia_total_CB = Energia_total_CB * 3;
% Potencia_total_CB






