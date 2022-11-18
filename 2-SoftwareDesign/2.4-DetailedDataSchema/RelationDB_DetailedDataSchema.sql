drop table User CASCADE ;
drop table Article CASCADE ;
drop table Author CASCADE ;
drop table Editor CASCADE ;
drop table Article_User CASCADE ;


CREATE TABLE user( --опис користувача
    id_user INT PRIMARY KEY, --айді
	name VARCHAR(50), --ім'я
	surname VARCHAR(50), --прізвище
	language VARCHAR, --мова якою володіє
	lk_gn_lit VARCHAR,--улюблені жанри літератури
	authorized BOOLEAN --індикатор авторізації
);

CREATE TABLE editor( --опис редактору
    id_editor INT PRIMARY KEY, --айді
	name VARCHAR(50), --ім'я
	surname VARCHAR(50), --прізвище
	language VARCHAR --мова якою володіє
);

CREATE TABLE author( --опис автору
    id_author INT PRIMARY KEY, --айді
	name VARCHAR(50), --ім'я
	surname VARCHAR(50), --прізвище
	language VARCHAR, --мова якою володіє
	genre_liter VARCHAR, --жанри літератури
	rating INT , -- рейтинг серед інших авторів
	hired BOOLEAN --індикатор що автор на постійній роботі
);
CREATE TABLE article( --опис статті
    id_article INT PRIMARY KEY, --айді
	Length INT, --длина
	genre_liter VARCHAR, --жанир літератури
	rating INT, --рейтинг статті
	link_text VARCHAR, --ссилка на текст статті
	id_editor INT REFERENCES users(id_editor), --айді редактору
  	id_author INT REFERENCES reminder(id_author)--айді автору
);
CREATE TABLE article_user( --назадування
     id_article INT REFERENCES users(id_article), --айді статті
     id_user INT REFERENCES reminder(id_user)--айді користувача
);
