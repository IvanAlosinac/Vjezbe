select * from autor;

select ime from autor;

Select ime, prezime from autor;
select ime, prezime, '1982-05-24' as datumrodenja from autor;
select concat(ime,' ',prezime) as ime from autor;

select * from autor where sifra=15166;
select * from autor where sifra<10;
select * from autor where sifra > 10;
select * from autor where ime like 'T%';
select * from autor where ime ;not like '%a%';

select * from autor where sifra between 3 and 15243;

#unijeti datum rodjenja, gdje fali
select * from autor where  datumrodenja is null;
update autor set datumrodenja='1975-05-24' where sifra=3;
select * from autor where sifra=3;

select * from izdavac;
select * from izdavac where sifra  > 10;
select * from izdavac where aktivan is null;
#ova naredba zahtjeva disable safe mode....
update izdavac set aktivan='1' where aktivan is null;
select * from izdavac;

select * from izdavac where aktivan=1;
#naredba zahtjeva disable safe mode...
select * from mjesto;
select * from mjesto where postanskibroj is null;
update mjesto set postanskiBroj='nepoznat' where postanskibroj is null;
select * from mjesto where naziv='Zagreb';
update mjesto set postanskiBroj='10000' where sifra=72150;
select * from mjesto where sifra=72150;
select * from mjesto where naziv in ('Rijeka','Zagreb','Osijek');


alter table mjesto auto_increment=300;
select * from mjesto;

