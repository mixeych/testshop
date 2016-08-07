<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'testshop');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '.}>n@S%I+;h=cI!IMH@af.05S|(}(;,+)w3%8u+%~?!>KNr.9y|/)FI$ujgtV5BM');
define('SECURE_AUTH_KEY',  'guaEms6zyMLz-j,alz/ON9FOX@=>HL3!{|o!+^Q(Qi(AzZOxg_2C+hk&FWJKY(SN');
define('LOGGED_IN_KEY',    '~-r{G#$5qz6b9ag`Ki-SQ=^Wc!/dKaxT,uCq<k.&|MTe}|PskF-nH%L$--:n$Qx$');
define('NONCE_KEY',        'lJo_RNzndNIT+Wjx--[V;6-TO{_{cs{CRr`%S){R<Mku^XAh!M;2uWY&WCehh%YG');
define('AUTH_SALT',        'a`d@v2@4~b*;}*1_b5:CEGMd_}Rk5J0/[)c0aLbvvj1|m(;Q<:*_9 ,.Mr9zqog5');
define('SECURE_AUTH_SALT', '/Ch2pAM@|$rJ[Q|_L _p{u^Wa}b,Gn-I2~}VzmH& @Jpf<CT]/w5xjq>FF@a0%]i');
define('LOGGED_IN_SALT',   'Y+-a,ML]0W_>=?#-{ay`^v.0D@}]+P.+_->i)i.V:9+|KOlaAB+R:%zrB/E?V^?8');
define('NONCE_SALT',       '!*FC#LvRPO@iaf(2vJJG%4@R Ef|)2_d-_89R.{=|`Sa]|pEgYm+#-ww@m.c5ZF~');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 * 
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
