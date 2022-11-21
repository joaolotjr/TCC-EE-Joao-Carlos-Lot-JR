
clc;
clear all;
DSSobj = actxserver('OpenDSSEngine.DSS');

if ~DSSobj.Start(0)
    disp('Indisponivel');
    return 
end

DSSText = DSSobj.Text;
DSSCircuit = DSSobj.ActiveCircuit;
DSSSolution = DSSCircuit.Solution;


DSSText.Command = 'Compile (G:\Meu Drive\Faculdade\TCC2\Simulação\Casos\Caso 1 - Recarga no Horário de Pico\trabalhoeditCaso1.dss)';
DSSText.Command='New monitor.Linha_2000_power element=line.LINHA200 1 1';
DSSText.Command='Solve';
DSSText.Command='set mode = daily stepsize = 1h number = 1';
DSSText.Command='set hour=0';

for i = 1:25
DSSSolution.Solve();
PerdasTotais(i) = DSSCircuit.Losses(1);    
end

%Criação de um vetor "H" para representar as horas corretamente.
H(1) = 0;
for k = 2: length(PerdasTotais)
H(k) = H(k-1)+1;
end

stairs(H,PerdasTotais)
title('Perdas Diária Totais do Alimentador [W] - Caso 1')
xlabel('Horas');
ylabel('Watts [W]');

%Perdas de Perdas de Energia diária no alimentador

Energia_T = 0;
for i = 1:25
Energia_T = PerdasTotais(i)*(1) + Energia_T;   
end
Energia_T




