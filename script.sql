--tabla users

insert into users (
    
    name,

    email,

    "password",

    age

) values (

    'Genesis',

    'mvgenesisvaleria@gmail.com',
    
    '987654321',

    '20'

);

insert into users (
    
    name,

    email,

    "password",

    age

) values (

    'Lyonell',

    'lyo_martinez@gmail.com',
    
    '123456789',

    '25'
    
);


--tabla course_videos

insert into course_videos (
    
    title,

    url

) values (

    'Javascript',

    'https://www.youtube.com/watch?v=8dWL3wF_OMw'

);

insert into course_videos (
    
    title,

    url

) values (

    'SQL',

    'https://www.youtube.com/watch?v=uUdKAYl-F7g&list=WL&index=5&t=4s'

);


--categories

insert into categories (
    
    name,

    video_id

) values (

    'programación',

    1

);

insert into categories (
    
    name,

    video_id

) values (

    'base de datos',

    2

);


-- tabla de courses 

insert into courses (
    
    title,

    description,

    teacher,

    category_id

) values (

    'javascript de cero a junior',

    'en este curso aprenderás las base en JS',

    'Jesus Castillo',

    1

);

insert into courses (
    
    title,

    description,

    teacher,

    category_id

) values (

    'introducción a base de datos',

    'en este curso aprenderás las base en SQL',

    'Javier Cordeo',

    2

);

-- tabla de users_courses

insert into users_courses (
    
    user_id,

    course_id

) values (

    1,

    2

);


insert into users_courses (
    
    user_id,

    course_id

) values (

    2,

    1

);

