use archdb; 

CREATE TABLE IF NOT EXISTS `User` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `last_name` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `email` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
    `phone_number` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
    `login` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
    `password` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
    PRIMARY KEY (`id`),
    INDEX `fn` (`first_name`),
    INDEX `ln` (`last_name`));

CREATE TABLE IF NOT EXISTS `Wall` (`id` INT NOT NULL AUTO_INCREMENT,
                        `user_id` INT NOT NULL,
                        `post` VARCHAR(256) NOT NULL,
                        `post_id` INT NOT NULL,
                        PRIMARY KEY (`id`),
                        FOREIGN KEY (`user_id`)  REFERENCES `User` (`id`));

CREATE TABLE IF NOT EXISTS `Message` (`id` INT NOT NULL AUTO_INCREMENT,
                        `from_user_id` INT NOT NULL,
                        `to_user_id`INT NOT NULL,
                        `message` VARCHAR(256) NOT NULL,
                        FOREIGN KEY (`to_user_id`)  REFERENCES `User` (`id`),
                        PRIMARY KEY (`id`));

INSERT INTO `User` (`first_name`, `last_name`, `login`, `password`, `email`) values
('Иван', 'Петров', 'ivan_petrov', 'pass123', 'ivan.petrov@gmail.com'),
('Елена', 'Смирнова', 'elena_smirnova', 'qwerty456', 'elena.smirnova@mail.ru'),
('Дмитрий', 'Козлов', 'dmitry_kozlov', 'abc789', 'dmitry.kozlov@gmail.com'),
('Анна', 'Морозова', 'anna_morozova', 'pass123', 'anna.morozova@yandex.ru'),
('Сергей', 'Иванов', 'sergey_ivanov', 'qwerty456', 'sergey.ivanov@gmail.com'),
('Мария', 'Павлова', 'maria_pavlova', 'abc789', 'maria.pavlova@mail.ru'),
('Александр', 'Федоров', 'alex_fedorov', 'pass123', 'alex.fedorov@gmail.com'),
('Екатерина', 'Смирнова', 'ekaterina_smirnova', 'qwerty456', 'ekaterina.smirnova@gmail.com'),
('Артем', 'Николаев', 'artem_nikolaev', 'abc789', 'artem.nikolaev@yandex.ru'),
('Ольга', 'Волкова', 'olga_volkova', 'pass123', 'olga.volkova@gmail.com'),
('Игорь', 'Петров', 'igor_petrov', 'qwerty456', 'igor.petrov@mail.ru'),
('Анастасия', 'Кузнецова', 'anastasia_kuznetsova', 'abc789', 'anastasia.kuznetsova@gmail.com'),
('Павел', 'Соколов', 'pavel_sokolov', 'pass123', 'pavel.sokolov@yandex.ru'),
('Елена', 'Иванова', 'elena_ivanova', 'qwerty456', 'elena.ivanova@gmail.com'),
('Алексей', 'Козлов', 'alexey_kozlov', 'abc789', 'alexey.kozlov@mail.ru'),
('Наталья', 'Смирнова', 'natalia_smirnova', 'pass123', 'natalia.smirnova@gmail.com'),
('Денис', 'Кузнецов', 'denis_kuznetsov', 'qwerty456', 'denis.kuznetsov@mail.ru'),
('Светлана', 'Павлова', 'svetlana_pavlova', 'abc789', 'svetlana.pavlova@gmail.com'),
('Максим', 'Николаев', 'maxim_nikolaev', 'pass123', 'maxim.nikolaev@yandex.ru'),
('Татьяна', 'Сидорова', 'tatyana_sidorova', 'qwerty456', 'tatyana.sidorova@gmail.com'),
('Артур', 'Морозов', 'artur_morozov', 'abc789', 'artur.morozov@mail.ru'),
('Евгения', 'Васильева', 'evgenia_vasilieva', 'pass123', 'evgenia.vasilieva@gmail.com'),
('Илья', 'Кузнецов', 'ilya_kuznetsov', 'qwerty456', 'ilya.kuznetsov@mail.ru'),
('Виктория', 'Семенова', 'victoria_semenova', 'abc789', 'victoria.semenova@gmail.com');

INSERT INTO `Wall` (`user_id`, `post`, `post_id`) VALUES
(1, 'Всем привет дорогие подписчики!',
    1
);


INSERT INTO `Message` (from_user_id, to_user_id, `message`) values
(
    3,
    2,
    'Чё как?'
    
),
(
    2,
    3,
    'Гуляла, теперь готовлю еду'
    
),
(
    4,
    6,
    'привет, пойдём сегодня брекин бэд смотреть?'
    
),
(
    7,
    8,
    'Привет, можешь послушать мои треки и оценить их?'
    
),
(
    1,
    5,
    'Ты не знаешь, сегодня ли 29 февраля?'
    
),
(
    5,
    1,
    'Нет, сегодня не 29 февраля'
    
),
(
    9,
    2,
    '#Пацаны'
    
);