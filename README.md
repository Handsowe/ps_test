# ps_test 
Для запуска нужно установить дополнительные модули php необходимые для работы laravel, а так же php-curl для работы самого проекта

В корне проекта находится дамп базы данных «ps_test.sql» настроить подключение в соответствующем конфиге (.env)

Проект запускается с помощью команды «php artisan serve» и доступен по указанному адресу (localhost:8000)

На главной странице пользователю (авторизованному и гостю) предоставляется возможность сделать запрос для получения информации об интересующем домене.

После авторизации становится доступна ссылка в шапке сайта, которая ведет на страницу историй запросов.

На странице историй запросов есть возможность переключаться между всей историей и историей своих запросов.

Элементы истории кликабельны и ведут на страницу детального просмотра запроса.

На странице детального просмотра есть возможность редактировать запись или удалить её.


Валидация полей выполнена в двух вариантах через кастомный класс наследованный от Request для главной страницы и для редактирования истории выполнена непосредственно в контроллере


Обработано большинство возможных внештатных ситуаций.

Тестовые пользователи:
user@user.user
an@toliy.com
user@mail.ru

Пароль: 12345678
