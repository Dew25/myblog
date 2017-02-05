-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 06 2017 г., 01:30
-- Версия сервера: 5.5.53-0+deb8u1
-- Версия PHP: 5.6.29-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `myblog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL COMMENT 'Заголовок статьи',
  `text` text NOT NULL COMMENT 'Текст статьи',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата добавления статьи.'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `date`) VALUES
(1, 'Ан-225 «Мрия»', 'Ан-225 «Мрия» (укр. мрія — «мечта», внутреннее обозначение: изделие 402, по кодификации НАТО: Cossack — рус. казак) — транспортный самолёт сверхбольшой грузоподъёмности разработки ОКБ им. О. К. Антонова. Самый большой в мире самолет. Уникальный транспортный самолёт был спроектирован и построен на Киевском Механическом Заводе в 1984—1988 годах. Первый полёт был совершён 21 декабря 1988 года. Изначально было заложено 2 машины, в настоящее время один экземпляр находится в лётном состоянии и эксплуатируется украинской компанией Antonov Airlines. Второй экземпляр готов на 70 %. Лётно-технические характеристики Экипаж, чел 7 Размах крыла, м 88.4 Длина, м 84 Высота, м 18.2 Площадь крыла, м2 905 Масса пустого самолёта, кг 250 000 Масса максимальная взлётная, кг 640 000 Тяга нефорсажная, кгс 1377 Масса топлива нормальная, кг 300 000 Крейсерская скорость , км/ч 850 Практическая дальность, км 15 400 Практическая дальность с максимальной нагрузкой, км 4500 Практический потолок, м 11 000 Полезная нагрузка дo 250 000 кг груза Двигатели Вариант Тип Модель Кол-во Мощность, л.с. 1 ТВД Прогресс (Лотарев) Д-18Т 6 В остальном Ан-225 практически полностью соответствует самолёту Ан-124, что существенно облегчило и удешевило как его создание, так и эксплуатацию. •	При том, что самолёт создавался для перевозки компонентов ракет-носителей «Энергия» и космического корабля «Буран», к моменту окончания строительства первого Ан-225 все необходимые перевозки были сделаны самолётом ВМ-Т «Атлант», и в программе «Буран» Ан-225 поучаствовал только, перевезя «Буран» на Парижский авиасалон в мае 1989 года и совершив несколько показательных полётов на Байконуре в апреле 1991 года. •	Одну из главных ролей в эпизодах про разрушение Лас-Вегаса в фильме «2012» сыграл Ан-225 «Мрия». Для фильма создали фотореалистичную копию этого самолёта — первую в мире компьютерную модель Ан-225 «Мрия» с высочайшим уровнем детализации. В фильме присутствуют несколько искажений фактов о самолёте, а именно: значительно уменьшенный по длине грузовой отсек и несуществующий хвостовой грузовой люк (на самом деле откидывается вверх вся передняя часть самолета, за исключением кабины). Также на борт самолёта нанесена надпись «ANTONOV 500» и флаг Азербайджана. •	Самолёт также появляется в компьютерной игре Battlefield: Bad Company 2 в одном из заданий, где используется российскими войсками для доставки и активации скалярного оружия над территорией Соединённых Штатов. Однако в игре самолёт имеет лишь 4 двигателя, что позволяет говорить об ошибке разработчиков шутера или же об ошибке персонажа данной игры, неверно назвавшего стоящий на ВПП самолёт. В оригинальной английской версии, к тому же, название самолета произносится как «Мира». На самом деле самолетом из игры является Ан-124 «Руслан». •	В игре MiG-29 Fulcrum фирмы NovaLogic АН-225 стоит на второй ВПП. ', '2016-08-31 17:23:15'),
(2, 'Mars Science Laboratory', 'Mars Science Laboratory (сокр. MSL), «Марс сайенс лэборатори» («Марсианская научная лаборатория», МНЛ) — миссия НАСА, в ходе выполнения которой на Марс был успешно доставлен и эксплуатируется марсоход третьего поколения «Кьюрио́сити» (англ. Curiosity, МФА: [ˌkjʊərɪˈɒsɪti] — любопытство, любознательность[11]). Марсоход представляет собой автономную химическую лабораторию в несколько раз больше и тяжелее предыдущих марсоходов «Спирит» и «Оппортьюнити».[1][3] Аппарат должен будет за несколько месяцев пройти от 5 до 20 километров и провести полноценный анализ марсианских почв и компонентов атмосферы. Для выполнения контролируемой и более точной посадки использовались вспомогательные ракетные двигатели.[12] Запуск «Кьюриосити» к Марсу состоялся 26 ноября 2011 год, мягкая посадка на поверхность Марса — 6 августа 2012. Предполагаемый срок службы на Марсе — один марсианский год (686 земных суток). MSL — часть долговременной программы НАСА по исследованию Марса роботизированными зондами Mars Exploration Program. В проекте помимо НАСА участвуют также Калифорнийский технологический институт и Лаборатория реактивного движения. Руководитель проекта — Дуг Маккистион (Doug McCuistion), сотрудник НАСА из отдела изучения других планет.[14] Полная стоимость проекта MSL составляет примерно 2,5 миллиарда долларов.[15] Специалисты американского космического агентства НАСА решили отправить марсоход в кратер Гейла. В огромной воронке хорошо просматриваются глубинные слои марсианского грунта, раскрывающие геологическую историю красной планеты.', '2016-08-31 17:23:15'),
(3, 'Moustiers Sainte-Marie. La ville de rêves', '\r\nLes traces de présence humaine dans les environs de Moustiers remontent à l’époque de Cro Magnon, il y a 30.000 ans.\r\n\r\nA l’Age du Bronze, le peuplement s’intensifie : les tribus ligures occupent les plateaux environnants et s’implantent en construisant des places fortifiées (oppidas).\r\n\r\nMais c’est au Ve siècle que débute véritablement l’occupation de l’actuel village : les moines de Lérins s’installent dans les grottes de tuf et fondent un monastère durant le VIème siècle. Cette présence ecclésiastique est à l’origine du nom de Moustiers Sainte-Marie (Monasterio au Moyen-Age).\r\n\r\nUn développement au gré des soubresauts de l’Histoire\r\n\r\nLes invasions maures des Xème et XIème siècles renvoient les habitants des alentours dans les grottes, pour se protéger. Mais c’est au cours des XIIè et XIIIè que s’édifient des fortifications et des maisons pendant que des moulins s’installent sur le torrent de l’Adou.\r\n\r\nAu cours du XIVème siècle, s’ajoutant à la peste de 1348, le village connaît une véritable hémorragie démographique liée aux querelles de succession du Comté de Provence.\r\n\r\nC’est avec le développement, au XVIè siècle, des industries mues par l’énergie hydraulique (tanneries, papeteries, etc.) que le village retrouve son essor. Mais à l’aube du XVIIème siècle, d’importantes intempéries mettent à mal les infrastructures et le village est de nouveau privé d’une grande partie de sa population.\r\n\r\n', '2016-08-31 17:23:15');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title_UNIQUE` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
