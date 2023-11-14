1- Quantas vezes Natalie Portman foi indicada ao Oscar?

Foi indicada 3 vezes.

select * from movies
where name = "Natalie Portman";

-----------------------------------------------------------------

2- Quantos Oscars Natalie Portman ganhou?

Ganhou 1 vez.

select * from movies
where name = "Natalie Portman" AND winner = "true";

-----------------------------------------------------------------

3- Amy Adams já ganhou algum Oscar?

Não.

select * from movies
where name = "Amy Adams" AND winner = "true";

-----------------------------------------------------------------

4- A série de filmes Toy Story ganhou um Oscar em quais anos?

2011 e 2020.

select * from movies
where film like "%Toy Story%" AND winner = "true";

-----------------------------------------------------------------

5- Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?

A categoria "Melhor filme" tem mais Oscars, já que possui 58 enquanto a categoria "Melhor Ator" possui apenas 49.

select count(category) from movies
where category = "Actor" AND winner = "true";

select count(category) from movies
where category = "Best Picture" AND winner = "true";

-----------------------------------------------------------------

6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?

Janet Gaynor em 1928.

select * from movies
where category = "Actress" AND winner = "true" limit 1;

-----------------------------------------------------------------

7- Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.

update movies
set winner = 1 where winner = "true";

update movies
set winner = 0 where winner = "false";


-----------------------------------------------------------------

8- Em qual edição do Oscar "Crash" ganhou o prêmio principal?

Edição número 78.

select * from movies
where film = "Crash" AND winner = "true" AND category = "best picture";


-----------------------------------------------------------------

9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2005', '2006', '277', 'Actress', 'Tia Turbina', 'Robôs', 'True');

-------------------------------------------------------------------

10- O filme Central do Brasil aparece no Oscar?

Yeah

select * from movies
where film like "%Central%";


-------------------------------------------------------------------

11- Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem.

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('1998', '1999', '277', 'Actor', 'Pikachu', 'pokémon o filme: mewtwo contra mewtwo', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2001', '2002', '277', 'Actor', 'Maico Uazowsky', 'Monstros S.A.', 'True');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2018', '2019', '277', 'Actress', 'Sandrinha Buloquis', 'Bird Box', 'False');

-------------------------------------------------------------------

12- Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar.
Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('1998', '1999', '277', 'Ator com melhor visao', 'Pikachu', 'pokémon o filme: mewtwo contra mewtwo', 'True');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2001', '2002', '277', 'Ator com melhor visao', 'Maico Uazowsky', 'Monstros S.A.', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2018', '2019', '277', 'Ator com melhor visao', 'Sandrinha Buloquis', 'Bird Box', 'False');

13- Qual foi o primeiro ano a ter um prêmio do Oscar?

1928

select * from movies
where ceremony = 1;

14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?

Shakespeare in Love, Não teve, Steven Spielberg.

select * from movies
where year_ceremony = 1999 AND category = "best picture" AND winner = "true";

select * from movies
where year_ceremony = 1999 AND category = "actress" AND winner = "true";

select * from movies
where year_ceremony = 1999 AND category = "directing" AND winner = "true";

---

The English Patient, Não teve, Anthony Minghella.

select * from movies
where year_ceremony = 1997 AND category = "best picture" AND winner = "true";

select * from movies
where year_ceremony = 1997 AND category = "actress" AND winner = "true";

select * from movies
where year_ceremony = 1997 AND category = "directing" AND winner = "true";

----------------------------------------------------------------------------------

15- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  
Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.

Yalitza Aparicio (México) - Yalitza Aparicio, uma atriz mexicana,
recebeu uma indicação ao Oscar de Melhor Atriz por seu papel no aclamado filme "Roma", dirigido por Alfonso Cuarón.

Shohreh Aghdashloo (Irã) - Shohreh Aghdashloo, uma atriz iraniana, recebeu uma indicação ao Oscar de Melhor Atriz
Coadjuvante por seu papel em "Casa de Areia e Névoa".

Rinko Kikuchi (Japão, novamente) - Além de sua primeira indicação ao Oscar, Rinko Kikuchi também foi indicada
ao Oscar por seu papel em "Babel", representando o cinema japonês.

Zhang Ziyi (China) - A atriz chinesa Zhang Ziyi recebeu uma indicação ao Oscar por sua atuação em "O Tigre e o Dragão" na
categoria de Melhor Atriz Coadjuvante.

Catalina Sandino Moreno (Colômbia) - A atriz colombiana Catalina Sandino Moreno foi indicada ao Oscar de Melhor
Atriz por sua atuação em "Maria Cheia de Graça".

Salma Hayek (México) - Embora seja de ascendência mexicana, Salma Hayek nasceu no México e foi indicada ao Oscar
por seu papel em "Frida" na categoria de Melhor Atriz.

Yolande Moreau (Bélgica) - Yolande Moreau, uma atriz belga, foi indicada ao Oscar de Melhor Atriz
Coadjuvante por seu papel em "Amélie Poulain" (também conhecido como "O Fabuloso Destino de Amélie Poulain").

Código >

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2018', '2019', '91', 'Actress', 'Yalitza Aparicio', 'Roma', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2003', '2004', '76', 'Actress', 'Shohreh Aghdashloo', 'Casa de Areia e Névoa', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2006', '2007', '79', 'Actress', 'Rinko Kikuchi', 'Babel', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2000', '2001', '73', 'Actress', 'Zhang Ziyi', 'O Tigre e o Dragão', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2004', '2005', '77', 'Actress', 'Catalina Sandino Moreno', 'Maria Cheia de Graça', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2002', '2003', '75', 'Actress', 'Salma Hayek', 'Frida', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2001', '2002', '74', 'Actress', 'Yolande Moreau', 'Amélie Poulain', 'False');