select * from drzava;

select * from vojni_aerodrom;

--????????? ??????? ?????????
select * from vojni_aerodrom
where drzava_ozn_d = 'SRB';

select * from model_vojnog_aviona;

--????????? ?????? ??? ?????? ??????????
select * from model_vojnog_aviona
where tip_mod =  'lovac-bombarder' or tip_mod =  'lovac';


--Prikazacemo Radnike koji imaju cin Majora i Kapetana tj samo Majora na kraju upita
select ime_r,prz_r,cin_r
from zaposleni
where zaposleni.cin_r like 'M%' or zaposleni.cin_r like 'K%'
MINUS
select ime_r,prz_r,cin_r
from zaposleni
where zaposleni.cin_r like 'K%';




--??????? ?? ?????? ???? ?? ?? ??? ??????? ??? ???????  ???? ?? ?????? ? ???? ?? ??????? ???????????
create or replace view
???? (IME_R,PRZ_R,CIN_R,ZAN_R, NAZIV_VA) as
select distinct zaposleni.ime_r, zaposleni.prz_r, zaposleni.cin_r, zaposleni.zan_r, vojni_aerodrom.naziv_va
from zaposleni inner join vojni_aerodrom on
zaposleni.vojni_aerodrom_reg_va = vojni_aerodrom.reg_va
where vojni_aerodrom.drzava_ozn_d = 'SRB' and zaposleni.zan_r = 'Pilot';

select * from ????;


select * from ima_g;

select * from vojni_avion;

--Spojicemo vojne avione sa modelima da bismo dobili lepe i kompletne podatke o svakom avionu

create or replace view
Podaci_O_Vojnom_Avionu (Registarska_Oznaka, Sifra_Modela, Naziv_Modela, Sistem_Naoruzanja, Broj_Sedista) as
select va.reg_av,ig.model_vojnog_aviona_s_mod, ig.s_mod1, ig.sistem_naoruzanja_sis_naz, va.br_sed
from vojni_avion va inner join ima_g ig on
va.ima_g_sis_naz = ig.sis_naz1
order by va.reg_av desc;


select * from podaci_o_vojnom_avionu;






