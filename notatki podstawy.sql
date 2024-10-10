
SQL jebac cwela uliczke?



██████╗  █████╗ ███████╗██╗   ██╗    ██████╗  █████╗ ███╗   ██╗██╗   ██╗ ██████╗██╗  ██╗
██╔══██╗██╔══██╗╚══███╔╝╚██╗ ██╔╝    ██╔══██╗██╔══██╗████╗  ██║╚██╗ ██╔╝██╔════╝██║  ██║
██████╔╝███████║  ███╔╝  ╚████╔╝     ██║  ██║███████║██╔██╗ ██║ ╚████╔╝ ██║     ███████║
██╔══██╗██╔══██║ ███╔╝    ╚██╔╝      ██║  ██║██╔══██║██║╚██╗██║  ╚██╔╝  ██║     ██╔══██║
██████╔╝██║  ██║███████╗   ██║       ██████╔╝██║  ██║██║ ╚████║   ██║   ╚██████╗██║  ██║
╚═════╝ ╚═╝  ╚═╝╚══════╝   ╚═╝       ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝    ╚═════╝╚═╝  ╚═╝
                                                                                        

Co to baza danych? - to zbior informacjii (loginy,maile,hasla,nazwiska,posty\....)

======================================
BUDOWA

baza danych składa się z tabel(tabele maja wiersze i kolumny), moze byc duzo tabel

np. baza: Biblioteka ma tabele: Uczniowie ,    gdzie są kolumny(pionowe): imie,nazwisko,klasa  | wiersze: czyli rekordy przypisane do kolumny <- imie:Adam,naziwko:Olszar,klasa:3T | moze tych danych byc tyle ile chcemy

Uczniowie                     <- tabela
IMIE | NAZWISKO | KLASA |
======================= |
ADAM | OLSZAR | 3T      |     <- CALE TO TO REKORD, ale pole(atrybut) to np. Adam, albo np. 3t <- poprostu rekord to cala linijka a pole to jeden shit
CWEL | OLSZAR | 3T      |                       WARTO DODAC ZE JAK WYMUJEMY REKORD TO NIE MUSIMY ICH WSZYSTKICH ATRYBUTOW WYJMOWAC(moje wyjac rekord samo imie i nazwisko)
JDJD | BOZYDAR | 52T    |


KSIAZKI
TYTUL | AUTOR | ROK |
=====================
lalka | prus  | 2000|               <- generalnie widzimy tu ze sa 2 te same rekordy i juz by byl rozpierdol w bazie, tabela poprostu jest zle zrobiona bo nie ma indexowania
potop | cwel  | 2020|
tadek | idiota| 6969|
tadek | idiota| 6969|

KSIAZKI
ID | TYTUL | AUTOR | ROK |
==========================
1  | lalka | prus  | 2000|               <- TU JUZ nie bedzie takiego problemu bo mamy ID(index jeden huj) 
2  | potop | cwel  | 2020|                  tabela uczniowie tez jest zle zrobiona bo nie ma id 
3  | tadek | idiota| 6969|
4  | tadek | idiota| 6969|

ID musi byc kluczem podstawowym <- zeby sytem nie zduplikowal tego a jest to powiedzmy tozsamosc tego rekordu id musi byc unikatowe

============================================================================================================================================

BUDOWANIE RELACJII POMIEDZY TABELAMI :) seks


KSIAZKI
IdKsiazki| TYTUL | AUTOR | ROK |                |IdUcznia| IMIE     | NAZWISKO  | KLASA |               <-KLUCZE PODSTAWOWE: IdKsiazki, IdUcznia
================================                |=======================================|
1        | lalka | prus  | 2000|                |1       |Adam      |Olszar     |3t     |
2        | potop | cwel  | 2020|                |2       |Nygger    |Cwel       |4a     |
3        | tadek | idiota| 6969|                |3       |Lukasz    |Adams      |1b     |               <- warto dodac ze jestem na tyle MONDRY ze w tabeli ksiazki sa 2 te same rekordy
4        | tadek | idiota| 6969|                |4       |Adam      |Sitko      |3t     |                   ALE dalem klucz podstawowy i juz kolo huja mi to lata bo wszystko jest G


WYPORZYCZENIA                                   Relacja to powiazanie logiczne pomiedzy tabelami realizowane za pomoca klucza podstawowego i tzw. klucza obcego
|IdWypozyczenia | IdUcznia | IdKsiazki |        czyli klucz podstawowy to: IdKsiazki a klucz obcy to IdKsiazki ale w tabeli WYPORZYCZENIA tak samo z uczniem i powiazanie tego to relacja
|======================================|
|1              |3         |1          |
|2              |3         |4          |        <- ta tabele mozna rozwinac o np. date wypozyczenia, data zwrotu ale mi sie nie chce jebac bazy danych? 
|3              |12        |9          |            ale tak baze danych najpierw projektujemy!!!! a potem uzupelniamy BO POTEM JEST ROZPIERDOL!!!!!!!!!!
|4              |5         |7          |


CZYLI ZNAY JUZ: klucz podstawowy, klucz obcy, rekord, pole, relacje pomiedzy tabelami

DBMS = Data Base Managment System (SZBD=SystemZarzadzaniaBazaDanych)

=============================================================================================================================

████████╗███████╗███╗   ███╗ █████╗ ████████╗    ███████╗ ██████╗ ██╗         ██╗    ██╗██████╗ ██████╗  ██████╗ ██╗    ██╗ █████╗ ██████╗ ███████╗███████╗███╗   ██╗██╗███████╗██████╗ 
╚══██╔══╝██╔════╝████╗ ████║██╔══██╗╚══██╔══╝    ██╔════╝██╔═══██╗██║         ██║    ██║██╔══██╗██╔══██╗██╔═══██╗██║    ██║██╔══██╗██╔══██╗╚══███╔╝██╔════╝████╗  ██║██║██╔════╝╚════██╗
   ██║   █████╗  ██╔████╔██║███████║   ██║       ███████╗██║   ██║██║         ██║ █╗ ██║██████╔╝██████╔╝██║   ██║██║ █╗ ██║███████║██║  ██║  ███╔╝ █████╗  ██╔██╗ ██║██║█████╗    ▄███╔╝
   ██║   ██╔══╝  ██║╚██╔╝██║██╔══██║   ██║       ╚════██║██║▄▄ ██║██║         ██║███╗██║██╔═══╝ ██╔══██╗██║   ██║██║███╗██║██╔══██║██║  ██║ ███╔╝  ██╔══╝  ██║╚██╗██║██║██╔══╝    ▀▀══╝ 
   ██║   ███████╗██║ ╚═╝ ██║██║  ██║   ██║       ███████║╚██████╔╝███████╗    ╚███╔███╔╝██║     ██║  ██║╚██████╔╝╚███╔███╔╝██║  ██║██████╔╝███████╗███████╗██║ ╚████║██║███████╗  ██╗   
   ╚═╝   ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝       ╚══════╝ ╚══▀▀═╝ ╚══════╝     ╚══╝╚══╝ ╚═╝     ╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═══╝╚═╝╚══════╝  ╚═╝   
                                                                                                                                                                                        

POSTAWOWE GOWNO(pamietaj bo na kartkowie nie bedzie tego i trzeba z glowki xxxtentacion-SAD)

Tworzenie nowej bazy:
CREATE DATABASE db_name;                                                <- wyjebane w jakies kodowanie utf8 ja jebie polske jebac polskie znaki kto tego kurwa uzywa?
CREATE DATABASE db_name CHARACTER SET utf8 COLLATE utf8_polish_ci;      <- jednak nie wyjebane bo cwel daje ocene nizej jak nie ma polskiego gowna pamietaj ten gowno dopisek

Usuwanie bazy:
DROP DATABASE db_name;

Wchodzenie do wybranej bazy:
USE db_name;

Wchodzenie do phpMyadmin przez terminal(cmd) przez domyslna sciezke windowsa
cd c:\xampp\mysql\bin mysql.exe -u root --password


========================================================================================
zad1. 
1.tworzenie bazy(z polskim kodowaniem) o nazwie Quiz, s
2.tworzyc tabele o nazwie: pytania 
    (kolumny: 
        id: staloliczbowy, nie moze byc null, automatycznie numerowane,klucz podstawowy
        tresc: tekstowy nie moze byc niczym
        odpa: tekstowy nie moze byc niczym
        odpb: tekstowy nie moze byc niczym
        odpc: tekstowy nie moze byc niczym
        odpd: tekstowy nie moze byc niczym
        answer: tekstowy nie moze byc niczym
    )
3. dodac rekordy to tabeli pytania 
4. dodac 2 nowe kolumny: (kategoria(text),rok(int)) do istniejacej tabeli pytania
5. zaaktualiowac 1index tabeli pytania o 2 nowe kolumny

==================\/=============WYKONANIE

tworzenie bazy o nazwie quiz z polskim kodowaniem:
CREATE DATABASE quiz CHARACTER SET utf8 COLLATE utf8_polish_ci;


tworzenie tabeli o nazwie pytania razem w wytycznymi:
CREATE TABLE pytania(
    id int not null auto_increment,
    tresc text not null,
    odpa text not null,
    odpb text not null,
    odpc text not null,
    odpd text not null,
    answer text not null,
    primary key(id)
); 


dodawanie rekordow do tabeli Pytania:
INSERT into pytania(tresc,odpa,odpb,odpc,odpd,answer) VALUES("tresc","aaa","bbb","ccc","ddd","a");


DODAWANIE 2 NOWYCH KOLUMN DO ISTNIEJACEJ TABELI:
alter table pytania ADD kategoria text not null, 
add rok int not null;


AKTUALIZOWANIE ISTNIEJACEGO REKORDU O ID=1 O 2 NOWE KOLUMNY 
update pytania set kategoria = "programowanie", rok = "2012" where pytania.id=1;

//dodawanie losowych danych zeby potem sie lepiej robilo przy kwerendach
insert into pytania(tresc,odpa,odpb,odpc,odpd,answer,kategoria,rok) values("kto jest koxem?","adam olszar","cwelisko","adam malysz","nikt","a","proste","997");
insert into pytania(tresc,odpa,odpb,odpc,odpd,answer,kategoria,rok) values("jak mam na imie","adam","norbler","monika","bezimienny","d","klasyczne","2022");
insert into pytania(tresc,odpa,odpb,odpc,odpd,answer,kategoria,rok) values("ile mam wzrostu","2m","1m","1m30cm","100m","d","wzrost","2013");
insert into pytania(tresc,odpa,odpb,odpc,odpd,answer,kategoria,rok) values("dlaczego musze sie uczyc sql","nie wiem","bo lubie","chce","moja pasja","a","dlaczego","2040");


===========================================================================================================

██╗  ██╗██╗    ██╗███████╗██████╗ ███████╗███╗   ██╗██████╗ ██╗   ██╗
██║ ██╔╝██║    ██║██╔════╝██╔══██╗██╔════╝████╗  ██║██╔══██╗╚██╗ ██╔╝
█████╔╝ ██║ █╗ ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║██║  ██║ ╚████╔╝ 
██╔═██╗ ██║███╗██║██╔══╝  ██╔══██╗██╔══╝  ██║╚██╗██║██║  ██║  ╚██╔╝  
██║  ██╗╚███╔███╔╝███████╗██║  ██║███████╗██║ ╚████║██████╔╝   ██║   
╚═╝  ╚═╝ ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝╚═════╝    ╚═╝   
                                                                     
postawowe zapytania czyli kwerendy do bazy


SELECT * FROM pytania;       <- pokazuje cala zawartosc tabeli pytania

wynik zapytania>
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+
| id | tresc                        | odpa        | odpb     | odpc        | odpd       | answer | kategoria     | rok  |
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+
|  1 | tresc                        | aaa         | bbb      | ccc         | ddd        | a      | programowanie | 2012 |
|  3 | kto jest koxem?              | adam olszar | cwelisko | adam malysz | nikt       | a      | proste        |  997 |
|  4 | jak mam na imie              | adam        | norbler  | monika      | bezimienny | d      | klasyczne     | 2022 |
|  5 | ile mam wzrostu              | 2m          | 1m       | 1m30cm      | 100m       | d      | wzrost        | 2013 |
|  6 | dlaczego musze sie uczyc sql | nie wiem    | bo lubie | chce        | moja pasja | a      | dlaczego      | 2040 |
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+


select tresc from pytania;      <- pokazuje tylko kolumne tresć
+------------------------------+
| tresc                        |
+------------------------------+
| tresc                        |
| kto jest koxem?              |
| jak mam na imie              |
| ile mam wzrostu              |
| dlaczego musze sie uczyc sql |
+------------------------------+


select tresc,answer,kategoria from pytania;     <- mozemy tez kilka kolumn pokazac wpisujac je po przecinku :) super 
+------------------------------+--------+---------------+
| tresc                        | answer | kategoria     |
+------------------------------+--------+---------------+
| tresc                        | a      | programowanie |
| kto jest koxem?              | a      | proste        |
| jak mam na imie              | d      | klasyczne     |
| ile mam wzrostu              | d      | wzrost        |
| dlaczego musze sie uczyc sql | a      | dlaczego      |
+------------------------------+--------+---------------+


select * from pytania where id=5;                    <- pokazuje tylko tam gdzie id jest 5
+----+-----------------+------+------+--------+------+--------+-----------+------+
| id | tresc           | odpa | odpb | odpc   | odpd | answer | kategoria | rok  |
+----+-----------------+------+------+--------+------+--------+-----------+------+
|  5 | ile mam wzrostu | 2m   | 1m   | 1m30cm | 100m | d      | wzrost    | 2013 |
+----+-----------------+------+------+--------+------+--------+-----------+------+


select * from pytania where answer="a";             <- tam gdzie odpowiedz jest a
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+
| id | tresc                        | odpa        | odpb     | odpc        | odpd       | answer | kategoria     | rok  |
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+
|  1 | tresc                        | aaa         | bbb      | ccc         | ddd        | a      | programowanie | 2012 |
|  3 | kto jest koxem?              | adam olszar | cwelisko | adam malysz | nikt       | a      | proste        |  997 |
|  6 | dlaczego musze sie uczyc sql | nie wiem    | bo lubie | chce        | moja pasja | a      | dlaczego      | 2040 |
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+


UWAGA TERAZ MULTI KULTI BARDZIEJ ZAAWANSOWANE ZAPYTANIE
czyli zapytania ze spojnikami logicznymi AND oraz OR
z porgramowania wiemy ze AND daje wynik jesli 2 zdarzenia są poprawne czyli 1 1 = 1, 0 1 = 0, 1 0 = 0
a OR 1 1 = 0, 1 0 = 1, 0 1 = 1


ZAPYTANIE AND
select * from pytania where answer="a" and rok = 2012;                                      <- pokazuje nam 1 oddpowiedz a są 2 pytania o odpowiedz A 
+----+-------+------+------+------+------+--------+---------------+------+                      ale mamy spojnik AND rok =2012 a tylko jedno z tych ma ten rok wiec pokazuje tylko jeden rekod
| id | tresc | odpa | odpb | odpc | odpd | answer | kategoria     | rok  |
+----+-------+------+------+------+------+--------+---------------+------+
|  1 | tresc | aaa  | bbb  | ccc  | ddd  | a      | programowanie | 2012 |
+----+-------+------+------+------+------+--------+---------------+------+


ZAPYTANIE OR
select * from pytania where answer="a" OR rok = 2012;                                       <- teraz pokazuje wszystkie gdzie jest odpowiedz A i dodatkowo gdzie jest rok 2012
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+
| id | tresc                        | odpa        | odpb     | odpc        | odpd       | answer | kategoria     | rok  |
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+
|  1 | tresc                        | aaa         | bbb      | ccc         | ddd        | a      | programowanie | 2012 |
|  3 | kto jest koxem?              | adam olszar | cwelisko | adam malysz | nikt       | a      | proste        |  997 |
|  6 | dlaczego musze sie uczyc sql | nie wiem    | bo lubie | chce        | moja pasja | a      | dlaczego      | 2040 |
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+

ROZNICE WYDAC GOLYM OKIEM!!!!!!!!!!!!!!

=====================WYJASNIENIE==========================================================================================================================
AND:                                                                    LOGIN | HASLO | AND
jezeli login jest dobry a haslo zle to wynik jest false                    1  |   0   |  0
jezeli login jest zly a haslo dobre to wynik jest false                    0  |   1   |  0            <- przy and 2 warunki MUSZA byc prawdziwe
jezeli login jest doby a haslo dobre to wynik jest true                    1  |   1   |  1

or:                                                                    LOGIN | HASLO | OR
jezeli login jest dobry a haslo zle to wynik jest true                    1  |   0   |  1
jezeli login jest zly a haslo dobre to wynik jest true                    0  |   1   |  1              <- przy Or 1 warunek MUSI byc prawdziwy
jezeli login jest doby a haslo dobre to wynik jest false                  1  |   1   |  1
                                                                          0  |   0   |  0
=========================================================================================================================================================

!!!!!!!!!SORTOWANIE!!!!!!!!!!!!!!
co sie nam przyda: zapytanie ORDER BY (nazwa kolumny przez ktora chcemy sortowac) ASC;  <- ASC sortowanie rosnace jak chcemy sortowac w dol dajemy DESC |jak nic nie damy domyslnie posortuje rosnacao
                                                                                                    zwykly angielski panowie dacie rade na kartkowce


PYTANIA ULOZONE ALFABETYCZNIE WG TRESCI rosnąco:
select * from pytania order by tresc asc;
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+
| id | tresc                        | odpa        | odpb     | odpc        | odpd       | answer | kategoria     | rok  |
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+
|  6 | dlaczego musze sie uczyc sql | nie wiem    | bo lubie | chce        | moja pasja | a      | dlaczego      | 2040 |
|  5 | ile mam wzrostu              | 2m          | 1m       | 1m30cm      | 100m       | d      | wzrost        | 2013 |
|  4 | jak mam na imie              | adam        | norbler  | monika      | bezimienny | d      | klasyczne     | 2022 |
|  3 | kto jest koxem?              | adam olszar | cwelisko | adam malysz | nikt       | a      | proste        |  997 |
|  1 | tresc                        | aaa         | bbb      | ccc         | ddd        | a      | programowanie | 2012 |
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+


PYTANIA ULOZONE ALFABETYCZNIE WG TRESCI malejaco:
select * from pytania order by tresc desc;
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+
| id | tresc                        | odpa        | odpb     | odpc        | odpd       | answer | kategoria     | rok  |
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+
|  1 | tresc                        | aaa         | bbb      | ccc         | ddd        | a      | programowanie | 2012 |
|  3 | kto jest koxem?              | adam olszar | cwelisko | adam malysz | nikt       | a      | proste        |  997 |
|  4 | jak mam na imie              | adam        | norbler  | monika      | bezimienny | d      | klasyczne     | 2022 |
|  5 | ile mam wzrostu              | 2m          | 1m       | 1m30cm      | 100m       | d      | wzrost        | 2013 |
|  6 | dlaczego musze sie uczyc sql | nie wiem    | bo lubie | chce        | moja pasja | a      | dlaczego      | 2040 |
+----+------------------------------+-------------+----------+-------------+------------+--------+---------------+------+

==================================================================================================================
wypisac pytania tylko od 3 do 5: 
sa 2 sposoby pierwszy do noob, drugi do sexi ludzi

select id,tresc from pytania where id>=3 and id<=5;
+----+-----------------+
| id | tresc           |
+----+-----------------+
|  3 | kto jest koxem? |
|  4 | jak mam na imie |
|  5 | ile mam wzrostu |
+----+-----------------+

select id,tresc from pytania where id between 3 and 5;
+----+-----------------+
| id | tresc           |
+----+-----------------+
|  3 | kto jest koxem? |
|  4 | jak mam na imie |
|  5 | ile mam wzrostu |
+----+-----------------+

===================================================================================================================================

operator LIKE <- uzywamy niego zeby wypisac cos podobnego np kategorie zaczynajace sie na "p" ale moze byc nawet cale slowo lub zdanie
                    dodajemy % przed albo po gdzie chemy zeby te pytanie sie ciagnelo 
                    przyklad?: slowa zaczynajace sie na P robimy tak: LIKE "p%"
                                zdania konczace sie slowem debil robimy tak: Like "%debil"


select * from pytania where kategoria like "p%";
+----+-----------------+-------------+----------+-------------+------+--------+---------------+------+
| id | tresc           | odpa        | odpb     | odpc        | odpd | answer | kategoria     | rok  |
+----+-----------------+-------------+----------+-------------+------+--------+---------------+------+
|  1 | tresc           | aaa         | bbb      | ccc         | ddd  | a      | programowanie | 2012 |
|  3 | kto jest koxem? | adam olszar | cwelisko | adam malysz | nikt | a      | proste        |  997 |
+----+-----------------+-------------+----------+-------------+------+--------+---------------+------+




wyjac zdania posiadajace jakies slowo np. adam? łatwo robimy: LIKE "%adam%"
select * from pytania where odpa like "%adam%";
+----+-----------------+-------------+----------+-------------+------------+--------+-----------+------+
| id | tresc           | odpa        | odpb     | odpc        | odpd       | answer | kategoria | rok  |
+----+-----------------+-------------+----------+-------------+------------+--------+-----------+------+
|  3 | kto jest koxem? | adam olszar | cwelisko | adam malysz | nikt       | a      | proste    |  997 |
|  4 | jak mam na imie | adam        | norbler  | monika      | bezimienny | d      | klasyczne | 2022 |
+----+-----------------+-------------+----------+-------------+------------+--------+-----------+------+
===================================================================================================================================