/*
Question: https://leetcode.com/problems/not-boring-movies/description/

return *
filter 1: odd id
filter 2: NOT boring
order: rating desc

*/

-- Runtime 407ms

SELECT * FROM Cinema
WHERE MOD(id, 2) = 1 AND description != 'boring'
ORDER BY rating DESC
;

