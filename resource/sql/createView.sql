use blog;
create table praise (
p_id INT PRIMARY KEY AUTO_INCREMENT,
u_id int NOT NULL ,
b_id INT DEFAULT 0,
c_id INT DEFAULT 0,
foreign key (u_id) references user(u_id)
);


create view show_blog_like as
SELECT 
    temp.u_id ,
    temp.u_name,
    temp.b_id,
    temp.b_name,
    temp.b_content,
    temp.b_audio,
    temp.b_video,
    temp.b_photo,
    temp.b_category_id,
    temp.portrait,
    like_number
FROM
    (SELECT 
        user.u_id,
            user.u_name,
            blog.b_id,
            blog.b_name,
            blog.b_content,
            blog.b_audio,
            blog.b_video,
            blog.b_photo,
            blog.b_category_id,
            user.portrait
    FROM
        user
    LEFT JOIN blog ON user.u_id = blog.u_id) temp
        LEFT JOIN
    (SELECT 
        p.b_id, COUNT(*) AS like_number
    FROM
        praise AS p
    GROUP BY p.b_id
    HAVING b_id != 0) pp ON temp.b_id = pp.b_id;


CREATE VIEW show_blog_with_like_comment AS
    SELECT 
        show_blog_like.*, dd.comment_number
    FROM
        show_blog_like
            LEFT JOIN
        (SELECT 
            comment.b_id, COUNT(*) AS comment_number
        FROM
            comment
        GROUP BY comment.b_id) dd ON show_blog_like.b_id = dd.b_id





