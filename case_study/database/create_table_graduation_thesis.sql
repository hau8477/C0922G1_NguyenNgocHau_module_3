drop database if exists graduation_thesis;
create database graduation_thesis;
use graduation_thesis;

create table `role`
(
    role_id   int auto_increment primary key,
    role_name varchar(45) not null unique
);

create table `account`
(
    account_id       bigint primary key auto_increment,
    account_email    varchar(255) unique not null,
    account_password varchar(45) not null
);

create table `account_role`
(
    account_role_id bigint auto_increment primary key,
    account_id      bigint,
    role_id         int,
    foreign key (account_id) references `account` (account_id),
    foreign key (role_id) references `role` (role_id)
);

create table `degree`
(
    degree_id   int primary key auto_increment,
    degree_name varchar(50) not null unique
);

create table `faculty`
(
    faculty_id   int primary key auto_increment,
    faculty_name varchar(50) not null 
);

create table `clazz`
(
    clazz_id   bigint primary key auto_increment,
    clazz_name varchar(50) not null unique,
    faculty_id int,
    foreign key (faculty_id) references `faculty` (faculty_id),
    teacher_id bigint unique
);

create table `teacher`
(
    teacher_id            bigint primary key auto_increment,
    teacher_code          varchar(50) unique not null ,
    teacher_name          varchar(50) not null ,
    teacher_date_of_birth varchar(50) not null ,
    teacher_email         varchar(50) unique not null ,
    teacher_phone_number  varchar(50) unique not null ,
    teacher_gender        bit default 0 not null ,
    teacher_address       varchar(255) not null ,
    teacher_img           longtext,
    faculty_id            int,
    degree_id             int,
    account_id            bigint,
    foreign key (faculty_id) references `faculty` (faculty_id),
    foreign key (degree_id) references `degree` (degree_id),
    foreign key (account_id) references `account` (account_id)
);

alter table `clazz`
    add foreign key (teacher_id) references `teacher` (teacher_id);

create table `student`
(
    student_id            bigint auto_increment primary key,
    student_code          varchar(45) unique not null ,
    student_name          varchar(50) not null ,
    student_gender        bit default 0 not null ,
    student_date_of_birth varchar(50) not null ,
    student_phone_number  varchar(15) unique not null ,
    student_email         varchar(50) unique not null ,
    student_address       varchar(255) not null ,
    student_img           longtext,
    student_flag          bit default 1,
    team_id               int,
    clazz_id              bigint,
    account_id            bigint,
    foreign key (account_id) references `account` (account_id),
    foreign key (clazz_id) references `clazz` (clazz_id)
);

create table `announcement`
(
    announcement_id      bigint primary key auto_increment,
    announcement_name    varchar(50) not null ,
    announcement_content longtext not null ,
    announcement_time    varchar(15) not null 
);

create table `student_announcement`
(
    student_announcement_id bigint auto_increment primary key,
    student_id           bigint,
    announcement_id      bigint,
    foreign key (student_id) references `student` (student_id),
    foreign key (announcement_id) references `announcement` (announcement_id)
);

create table `project`
(
    project_id          int primary key auto_increment,
    project_name        varchar(255) unique not null ,
    project_content     longtext not null ,
    project_description longtext not null,
    project_status      bit default 0,
    project_img         longtext
);

create table `stage`
(
    stage_id   int primary key auto_increment,
    stage_name varchar(45) not null 
);

create table `progress_report`
(
    progress_report_id      bigint auto_increment primary key,
    progress_report_name    varchar(255),
    progress_report_content longtext not null ,
    progress_report_file    longtext,
    progress_report_percent int not null ,
    project_id              int,
    stage_id                int,
    foreign key (stage_id) references `stage` (stage_id),
    foreign key (project_id) references `project` (project_id)
);

create table `team`
(
    team_id    int primary key auto_increment,
    team_name  varchar(50) unique not null ,
    teacher_id bigint,
    project_id int,
    foreign key (teacher_id) references `teacher` (teacher_id),
    foreign key (project_id) references `project` (project_id)
);

alter table `student`
    add foreign key (team_id) references `team` (team_id);

create table `question_and_answer`
(
    question_and_answer_id      bigint primary key auto_increment,
    question_and_answer_title   varchar(50) not null ,
    question_and_answer_content varchar(255) not null ,
    question_and_answer_reply   varchar(255),
    student_id                     bigint,
    foreign key (student_id  ) references `student` (student_id)
);

create table `admin`
(
    admin_id           int auto_increment primary key,
    admin_name         varchar(45) not null ,
    admin_email        varchar(255) unique not null ,
    admin_phone_number varchar(255) unique not null ,
    admin_img          longtext,
    admin_address      varchar(255) not null ,
    account_id         bigint,
    foreign key (account_id) references `account` (account_id)
);

create table `notification_teacher`
(
    notification_teacher_id      bigint primary key auto_increment,
    notification_teacher_topic   varchar(50) not null ,
    notification_teacher_time    varchar(15) not null ,
    notification_teacher_content varchar(255) not null ,
    teacher_id bigint,
    foreign key (teacher_id) references `teacher`(teacher_id)
);

create table `document`
(
    document_id       bigint auto_increment primary key,
    document_name     varchar(50) not null ,
    document_describe longtext,
    flag_delete       bit(1),
    teacher_id bigint,
	FOREIGN KEY (teacher_id) REFERENCES `teacher`(teacher_id)
);




