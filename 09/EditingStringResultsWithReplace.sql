select * , REPLACE(Title, 'Blood', 'B*****d' ) as CleanTitle


from Album where Title like '%Blood%'