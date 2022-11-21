clear all
close all
clc;

%Código de obtenção de Dados de Tensão e Corrente para o cenário de demanda
%Máxima e dados de Potência Diaria do sistema.


DSSobj = actxserver('openDSSEngine.DSS');

if ~DSSobj.Start(0)
    disp('Indisponivel de iniciar o OpenDSS');
    return
end

DSSText = DSSobj.Text;
DSSCircuit = DSSobj.ActiveCircuit;
DSSSolution = DSSCircuit.Solution;
DSSMonitors = DSSCircuit.Monitors;

DSSText.Command = 'Compile (G:\Meu Drive\Faculdade\TCC2\Simulação\Casos\Caso 0 - Base\trabalhoeditCasoBase.dss)'
DSSSolution.Solve;

%DSSText.Command = 'New EnergyMeter.Linha 200 Line.LINHA200 1';

DSSText.Command = 'New Monitor.linha200_power Line.LINHA200 1 1';

%DSSText.command = 'show power elements';
%DSSText.command = 'show Voltages LN Nodes';

DSSText.Command = 'set mode=dally stepsize = 1h number = 1';
DSSText.Command = 'set hour=18'; 
% Para Questão 3:Setar 0 para Iniciar no tempo zero. 

DSSMonitors.First();

% Para Questão 3:Setar o For de 1 a 25 para fazer análise 
for i = 1:1
    
    DSSText.Command = 'Solve';
    DSSText.Command = 'Export voltages';
    DSSText.Command = 'Export current';
    %DSSText.Command = 'Export meter';
    DSSText.Command = 'Export monitor linha200_power';
end



