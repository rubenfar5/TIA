%Perguntas TIA
%Qual é a sua zona destino? (Algarve, Alentejo, Açores, Madeira, Centro, Norte) 1-2-3-4-5-6
%É fã de gastronomia?  SIM - NAO
%É praticante de desporto? SIM - NAO
%Natureza, cultura ou praia? Selecione 2 
%Tenciona levar animais de estimaçao? SIM - NAO

if fa_gastronomia and desportista and natureza and cultura and animais then perfil_1.
if fa_gastronomia and desportista and natureza and cultura and nao_animais then perfil_2.
if fa_gastronomia and desportista and natureza and praia and animais then perfil_3.
if fa_gastronomia and desportista and natureza and praia and nao_animais then perfil_4.
if fa_gastronomia and desportista and praia and cultura and animais then perfil_5.
if fa_gastronomia and desportista and praia and cultura and nao_animais then perfil_6.
if fa_gastronomia and nao_desportista and natureza and cultura and animais then perfil_7.
if fa_gastronomia and nao_desportista and natureza and cultura and nao_animais then perfil_8.
if fa_gastronomia and nao_desportista and natureza and praia and animais then perfil_9.
if fa_gastronomia and nao_desportista and natureza and praia and nao_animais then perfil_10.
if fa_gastronomia and nao_desportista and praia and cultura and animais then perfil_11.
if fa_gastronomia and nao_desportista and praia and cultura and nao_animais then perfil_12.
if nao_fa_gastronomia and desportista and natureza and cultura and animais then perfil_13.
if nao_fa_gastronomia and desportista and natureza and cultura and nao_animais then perfil_14.
if nao_fa_gastronomia and desportista and natureza and praia and animais then perfil_15.
if nao_fa_gastronomia and desportista and natureza and praia and nao_animais then perfil_16.
if nao_fa_gastronomia and desportista and praia and cultura and animais then perfil_17.
if nao_fa_gastronomia and desportista and praia and cultura and nao_animais then perfil_18.
if nao_fa_gastronomia and nao_desportista and natureza and cultura and animais then perfil_19.
if nao_fa_gastronomia and nao_desportista and natureza and cultura and nao_animais then perfil_20.
if nao_fa_gastronomia and nao_desportista and natureza and praia and animais then perfil_21.
if nao_fa_gastronomia and nao_desportista and natureza and praia and nao_animais then perfil_22.
if nao_fa_gastronomia and nao_desportista and praia and cultura and animais then perfil_23.
if nao_fa_gastronomia and nao_desportista and praia and cultura and nao_animais then perfil_24.

%Algarve- 1,
%Alentejo - 2,
%Açores - 3,
%Madeira - 4,
%Centro - 5,
%Norte - 6

%perfil(zona,perfil)