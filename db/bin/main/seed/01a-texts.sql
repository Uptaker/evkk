insert into core.testing_texts(title, content, created_at) VALUES ('Juku sündmused', 'Juku tuli kooli', transaction_timestamp());

insert into text (id, content) values('84b679d2-81f6-4c7a-b5a5-4a310ae84cb2', 
 'Suvel ma lugesin läbi ajalehe &quot;.... &quot;, kus oli väga huvitav artikkel ühest koolist, väikesest alevikust Võru juures - Sõmerpalust.

Selles koolis on väga sõbralik ja tähelepanelik kollektiiv.
Viis aastat tagasi kooliõpilased ja õpetajad koos tegid väikeses toad koolikeskuses talveaeda.
See oli raske töö, sest nad ise pidid tegema suuri toru kuuma veega, et ruumis oleks soe, ja hiiglasuuri lampe, et oliks valgus.
Ja nüüd see on väga ilus koht.
Toa keskel kasvavad erinevad troopilised taimid, õitsevad ilusad lilled, aga piki seima seisavad suured puurid, kus elavad papagoid.
Nurgas seisab veel üks suur puur - seal elab madu - suur tiigri püüton.

Üks kord talvel, kui Sõmerpalus ei oli elektrit ja sooja vett 5 - 6 päevat, õpetajad ja õpilased pidid viima kooli kodust pudeleid sooja veega ja sojendama nendega madu, et ta ei sureks.
See näitab, kui vastuvad õpilased koolis on, ja kooli kollektiiv on nagu suur pere.

Mulle meeldib see atikkel, sest ma sain teada, et väikeses linnas, kus, kui ma tean, on väga raske elu, inimesed katsuvad luua midagi meeldiv ja hea nende jaoks, et oleks natukene rõmsaks.');

insert into text_official_property(property_name, property_datatype, property_type, property_description) 
  values('kood', 'varchar', 'kood', 'Teksti kood vanas baasis');

insert into text_official_property(property_name, property_datatype, property_type, property_description) 
  values('korpusekood', 'varchar', 'korpusekood', 'tekstikorpuse kood');
insert into text_official_property(property_name, property_datatype, property_type, property_description) 
  values('tekstikeel', 'varchar', 'keel', 'keel, milles tekst on kirjutatud');
insert into text_official_property(property_name, property_datatype, property_type, property_description) 
  values('tekstityyp', 'varchar', 'tekstityyp', 'essee, amtkiri, ...');
insert into text_official_property(property_name, property_datatype, property_type, property_description) 
  values('elukoht', 'varchar', 'elukoht', 'koha kirjeldus maakonna või riigi täpsusega');
insert into text_official_property(property_name, property_datatype, property_type, property_description) 
  values('vanusegrupp', 'varchar', 'vanusegrupp', 'valitud vanusegrupp');
insert into text_official_property(property_name, property_datatype, property_type, property_description) 
  values('sugu', 'varchar', 'sugu', '');
insert into text_official_property(property_name, property_datatype, property_type, property_description) 
  values('emakeel', 'varchar', 'keel', 'sünnijärgselt õpitud keel');
insert into text_official_property(property_name, property_datatype, property_type, property_description) 
  values('kodukeel', 'varchar', 'keel', 'praegu kodus igapäevaselt kasutatav keel');
insert into text_official_property(property_name, property_datatype, property_type, property_description) 
  values('keeletase', 'varchar', 'keeletase', 'keele valdamise tase');
insert into text_official_property(property_name, property_datatype, property_type, property_description) 
  values('haridus', 'varchar', 'haridus', 'haridustase');
insert into text_official_property(property_name, property_datatype, property_type, property_description) 
  values('abivahendid', 'varchar', 'abivahendid', 'kas teksti koostamisel oli võimalik kasutada abivahendeid');



insert into text_property_default_value(property_name, property_value, property_display_value) values
  ('korpusekood', 'cFqPphvYi', 'Eesti keele olümpiaadi tööd');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('korpusekood', 'cwUSEqQLt', 'Akadeemiline õppijakee');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('korpusekood', 'cwUprXCTL', 'Eesti teaduskeel');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('korpusekood', 'cFOoRQekA', 'EVKK');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('korpusekood', 'clWmOIrLa', 'REKKi kogud');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('korpusekood', 'cZjHWUPtD', 'Vene keel kui võõrkeel');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('korpusekood', 'cgSRJPKTr', 'Vene keel kui emakeel');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('korpusekood', 'cYDRkpymb', 'K1 referentskorpus');
  


insert into text_property_default_value (property_name, property_value) values
  ('keel', 'eesti');
insert into text_property_default_value (property_name, property_value) values
  ('keel', 'vene');
insert into text_property_default_value (property_name, property_value) values
  ('keel', 'soome');
insert into text_property_default_value (property_name, property_value) values
  ('keel', 'saksa');
insert into text_property_default_value (property_name, property_value) values
  ('keel', 'rootsi');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'isikiri', 'isiklik kiri');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'amtkiri', 'ametlik kiri');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'essee', 'essee');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'referaat', 'referaat');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'trilmunud', 'trükis ilmunud');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'analyys', 'analüüs');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'vastkys', 'vastus küsimusele');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'ymberjutustus', 'ümberjutustus');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'tolge', 'tõlge');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'harjutus', 'harjutus');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'teadusartikkel', 'teadusartikkel');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'monograafia', 'monograafia');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'vaitekiri', 'väitekiri');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'matoo', 'MA-töö');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'batoo', 'BA-töö');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'arvamuslugu', 'arvamuslugu');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('tekstityyp', 'muu', 'muu');

insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('elukoht', 'tallinn', 'Tallinn/Harjumaa');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('elukoht', 'idaviru', 'Ida-Virumaa');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('elukoht', 'tartu', 'Tartu');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('elukoht', 'soome', 'Soome');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('elukoht', 'leedu', 'Leedu');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('elukoht', 'saksamaa', 'Saksamaa');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('elukoht', 'inglismaa', 'Inglismaa');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('elukoht', 'ungari', 'Ungari');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('elukoht', 'muu', 'muu');
  

insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('vanus', 'kuni18', 'kuni 18');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('vanus', 'kuni26', 'kuni 26');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('vanus', 'kuni40', 'kuni 40');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('vanus', '41plus', '41+');

insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('abivahendid', 'jah', 'jah');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('abivahendid', 'ei', 'ei');
  
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('keeletase', 'A', 'A');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('keeletase', 'B', 'B');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('keeletase', 'C', 'C');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('keeletase', 'A1', 'A1');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('keeletase', 'A2', 'A2');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('keeletase', 'B1', 'B1');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('keeletase', 'B2', 'B2');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('keeletase', 'C1', 'C1');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('keeletase', 'C2', 'C2');


insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('taust', 'op', 'õpilane');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('taust', 'ylop', 'üliõpilane');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('taust', 'teenist', 'teenistuja');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('taust', 'kvaliftooline', 'kvalifitseeritud tööline');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('taust', 'lihttooline', 'lihttööline');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('taust', 'tootu', 'töötu');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('taust', 'kodune', 'kodune');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('taust', 'pension', 'pensionär');

insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('haridus', 'muu', 'muu');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('haridus', 'pohi', 'põhiharidus');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('haridus', 'kesk', 'keskharidus');
insert into text_property_default_value (property_name, property_value, property_display_value) values
  ('haridus', 'korg', 'kõrgharidus');

