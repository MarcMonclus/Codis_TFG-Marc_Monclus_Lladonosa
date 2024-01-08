%% ALGORISME DE DETERMINACIO DELS DANYS

clear all;
close all;

%% 1. LOCALITZACIO DE L'IMPACTE
N_cares = 2; %Nº de cares recobertes amb poliurea (Emplenar)
Una_cara = 1;
Dues_cares = 2;

if N_cares == Una_cara
    fprintf('Obervar pics de tensio en la cara interior de la biga.\n');
elseif N_cares == Dues_cares
    fprintf('Obervar pics de tensio en la cara exterior de la biga.\n');
else
    fprintf('Error en el nombre de cares recobertes amb poliurea.\n');
end

%% 2. DETERMINACIÓ DELS VALORS DE VOLTATGE I ENERGIA REGISTRATS
% En aquesta part del proces, s'hauria de tindre un equip connectat per tal
% de registrar els valors de voltatge en funcio del temps. Despres,
% s'hauria de seleccionar un rang temporal i importar els valors a MATLAB.
% Finalment, amb el rang de valors seleccionat i el pic de tensio trobat, a
% traves de la formula utilitzada en el projecte per calcular l'energia, es
% podria obtenir el valor d'energia corresponent al pic de tensio.

% En no disposar de l'equip, s'ha d'introduir els valors de tensio i
% energia a ma, pero serveix per demostrar l'algorisme de resolucio.

% INTRODUCCIO DE DADES

Poliurea = 6; %Configuracio de poliurea utilitzada (E1, E2, F1, F2, N1, N2) (Emplenar)
V_pic = 0.5; %Valor del pic de voltatge en el rang de temps determinat corresponent al 2n sensor mes proper a l'impacte (P2) (Emplenar)
Energia = 0.03; %Valor d'energia calculat per aquest pic de tensio (Emplenar)

E1 = 1; %Poliurea elongable per una cara
E2 = 2; %Poliurea elongable per les dues cares
F1 = 3; %Poliurea en fred per una cara
F2 = 4; %Poliurea en fred per les dues cares
N1 = 5; %Poliurea normal per una cara
N2 = 6; %Poliurea normal per les dues cares

% Definicio de les rectes limit per cada cas

%y1_E1 = 183.39 * x + 0.66; (Recta limit de trencament per E1)
m1_E1 = 183.39; %Pendent de la recta
b1_E1 = 0.66; % Terme independent

%y2_E1 = 183.39 * x + 0.42; (Recta limit de seguretat per E1)
m2_E1 = 183.39; %Pendent de la recta
b2_E1 = 0.42; % Terme independent

%y1_E2 = 286.94 * x + 0.475; (Recta limit de trencament per E2)
m1_E2 = 286.94; %Pendent de la recta
b1_E2 = 0.475; % Terme independent

%y2_E2 = 286.94 * x + 0.22; (Recta limit de seguretat per E2)
m2_E2 = 286.94; %Pendent de la recta
b2_E2 = 0.22; % Terme independent

%y1_F1 = 67.366 * x + 0.715; (Recta limit de trencament per F1)
m1_F1 = 67.366; %Pendent de la recta
b1_F1 = 0.715; % Terme independent

%y2_F1 = 67.366 * x + 0.6; (Recta lmit de seguretat per F1)
m2_F1 = 67.366; %Pendent de la recta
b2_F1 = 0.6; % Terme independent

%y1_F2 = 255.63 * x + 0.39; (Recta limit de trencament per F2)
m1_F2 = 255.63; %Pendent de la recta
b1_F2 = 0.39; % Terme independent

%y2_F2 = 255.63 * x + 0.3; (Recta limit de seguretat per F2)
m2_F2 = 255.63; %Pendent de la recta
b2_F2 = 0.3; % Terme independent

%y1_N1 = 136.77 * x + 0.55; (Recta limit de trencament per N1)
m1_N1 = 136.77; %Pendent de la recta
b1_N1 = 0.55; % Terme independent

%y2_N1 = 136.77 * x + 0; (Recta limit de seguretat per N1)
m2_N1 = 136.77; %Pendent de la recta
b2_N1 = 0; % Terme independent

%y1_N2 = 64.824 * x + 1.1; (Recta limit de trencament per N2)
m1_N2 = 64.824; %Pendent de la recta
b1_N2 = 1.1; % Terme independent

%y2_N2 = 64.824 * x + 0.166; (Recta limit de seguretat per N2)
m2_N2 = 64.824; %Pendent de la recta
b2_N2 = 0.166; % Terme independent

%% 3. CLASSIFICACIÓ

if Poliurea == E1
    y_recta1 = m1_E1 * Energia + b1_E1;
    y_recta2 = m2_E1 * Energia + b2_E1;
    if V_pic > y_recta1
    fprintf('Zona de trencament.\n');
    elseif V_pic < y_recta2
    fprintf('Zona seguretat.\n');
    else
    fprintf('Zona intermedia.\n');
    end
    
elseif Poliurea == E2
    y_recta1 = m1_E2 * Energia + b1_E2;
    y_recta2 = m2_E2 * Energia + b2_E2;
    if V_pic > y_recta1
    fprintf('Zona de trencament.\n');
    elseif V_pic < y_recta2
    fprintf('Zona seguretat.\n');
    else
    fprintf('Zona intermedia.\n');
    end

elseif Poliurea == F1
    y_recta1 = m1_F1 * Energia + b1_F1;
    y_recta2 = m2_F1 * Energia + b2_F1;
    if V_pic > y_recta1
    fprintf('Zona de trencament.\n');
    elseif V_pic < y_recta2
    fprintf('Zona seguretat.\n');
    else
    fprintf('Zona intermedia.\n');
    end

elseif Poliurea == F2
    y_recta1 = m1_F2 * Energia + b1_F2;
    y_recta2 = m2_F2 * Energia + b2_F2;
    if V_pic > y_recta1
    fprintf('Zona de trencament.\n');
    elseif V_pic < y_recta2
    fprintf('Zona seguretat.\n');
    else
    fprintf('Zona intermedia.\n');
    end
    
elseif Poliurea == N1
    y_recta1 = m1_N1 * Energia + b1_N1;
    y_recta2 = m2_N1 * Energia + b2_N1;
    if V_pic > y_recta1
    fprintf('Zona de trencament.\n');
    elseif V_pic < y_recta2
    fprintf('Zona seguretat.\n');
    else
    fprintf('Zona intermedia.\n');
    end
    
elseif Poliurea == N2
    y_recta1 = m1_N2 * Energia + b1_N2;
    y_recta2 = m2_N2 * Energia + b2_N2;
    if V_pic > y_recta1
    fprintf('Zona de trencament.\n');
    elseif V_pic < y_recta2
    fprintf('Zona seguretat.\n');
    else
    fprintf('Zona intermedia.\n');
    end
    
else
  fprintd('Error de comprensio.\n');
end
    
