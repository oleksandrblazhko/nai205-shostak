drop table app_user cascade
drop table editor cascade
drop table author cascade
drop table article cascade
drop table article_user cascade


CREATE TABLE app_user ( --опис користувача
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
	id_editor INT REFERENCES editor(id_editor), --айді редактору
  	id_author INT REFERENCES author(id_author)--айді автору
);
CREATE TABLE article_user( --назадування
     id_article INT REFERENCES article(id_article), --айді статті
     id_user INT REFERENCES app_user(id_user)--айді користувача
);
