# Write your MySQL query statement below



    (select name as results
    from
        (select u.name, count(m.movie_id) as cnt
        from
        movierating m join users u on m.user_id = u.user_id
        group by u.user_id 
        )t
    
    order by cnt desc, name
     limit 1
    )
union
    (select title as results
    from 
        (select mv.title, avg(m.rating) as ag, m.created_at
        from
        movierating m join movies mv on mv.movie_id = m.movie_id
        
         group by m.movie_id, month(m.created_at)
         having month(m.created_at)= 02
        )t
     order by ag desc, title 
     limit 1
     
     )

