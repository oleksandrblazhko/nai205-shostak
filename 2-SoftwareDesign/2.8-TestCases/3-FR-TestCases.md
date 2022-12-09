| R ID  | TC ID | Опис кроків тестового сценарію                                                                                          | Опис очікуваних результатів |
| ----- | ----- | ----------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| FR1.1 | TC1.1 | Початкові умови: користувач успішно створений<br>Кроки:<br>1) login\_email = "iamnewhere”.<br>2) password = "Password1" | Результат = 1               |
| FR1.1 | TC1.2 | Початкові умови: відсутні<br>Кроки:<br>1) login\_email = "iaaaaaaaamnewhere"<br>2) password = "Password1"               | Результат = -1              |
| FR1.1 | TC1.3 | Початкові умови: відсутні<br>Кроки:<br>1) login\_email = "iam\_new@here"<br>2) password = "Password1"                   | Результат = -1              |
| FR1.1 | TC1.4 | Початкові умови: відсутні<br>Кроки:<br>1) login\_email = “користувач"<br>2) password = "Password1"                      | Результат = -1              |
| FR1.1 | TC1.5 | Початкові умови: відсутні<br>Кроки:<br>1) login\_email = "iamnewhere"<br>2) password = "Passwo"                         | Результат = -2              |
| FR1.1 | TC1.6 | Початкові умови: відсутні<br>Кроки:<br>1) login\_email = “iamnewhere"<br>2) password = "password1"                      | Результат = -2              |
| FR1.1 | TC1.7 | Початкові умови: відсутні<br>Кроки:<br>1)login\_<br>2)email = “iamnewhere"<br>2) password = "Password\_1"               | Результат = -2              |
| FR1.1 | TC1.8 | Початкові умови: відсутні<br>Кроки:<br>1) login\_email = “iamnewhere"<br>2) password = "пароль1"                        | Результат = -2              |
