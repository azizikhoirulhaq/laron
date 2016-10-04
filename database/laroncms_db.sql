/* Laron CMS Database 
* by Azizi Khoirul Haq
* created date : 16/02/2016
*/

/* table lr_admin */
CREATE TABLE lr_admin (
	admin_id TINYINT(4) PRIMARY KEY auto_increment,
	admingroup_id TINYINT(5),
	admin_username VARCHAR(30),
	admin_password VARCHAR(100),
	admin_name VARCHAR(200) 
);

/* table lr_admingroup */
CREATE TABLE lr_admingroup (
	admingroup_id TINYINT(4) PRIMARY KEY auto_increment,
	admingroup_name VARCHAR(20),
	admingroup_desc VARCHAR(200),
	admingroup_privilege TEXT
);

/* table lr_config */
CREATE TABLE lr_config (
	config_id TINYINT(4) PRIMARY KEY auto_increment,
	config_name VARCHAR(75),
	config_value TEXT
);

/* table lr_modules */
CREATE TABLE lr_modules (
	module_id INT(9) PRIMARY KEY auto_increment,
	module_name VARCHAR(150),
	module_title VARCHAR(250),
	module_installed DATETIME,
	module_status CHAR(1)
);

/* table lr_pages */
CREATE TABLE lr_pages (
	page_id INT(9) PRIMARY KEY auto_increment,
	section_id INT(9),
	page_type ENUM('static','module'),
	page_order FLOAT,
	page_title VARCHAR(250),
	page_alias VARCHAR(100),
	page_content LONGTEXT,
	page_module VARCHAR(100),
	page_createdon DATETIME,
	page_editedon DATETIME,
	page_default ENUM('y','n'),
	page_published ENUM('y','n'),
	page_image VARCHAR(400)
);

/* table lr_plugins */
CREATE TABLE lr_plugins (
	plugin_id INT(9) PRIMARY KEY auto_increment,
	plugin_name VARCHAR(150),
	plugin_title VARCHAR(250),
	plugin_installed DATETIME,
	plugin_status CHAR(1)
);

/* table lr_routers */
CREATE TABLE lr_routers (
	router_id INT(9) PRIMARY KEY auto_increment,
	router_name VARCHAR(150),
	router_title VARCHAR(250),
	router_installed DATETIME,
	router_status CHAR(1)
);

/* table lr_sections */
CREATE TABLE lr_sections (
	section_id INT(9) PRIMARY KEY auto_increment,
	section_name VARCHAR(150),
	section_desc VARCHAR(250)
);
