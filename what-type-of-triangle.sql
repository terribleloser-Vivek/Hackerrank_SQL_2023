/*SELECT CASE             
            WHEN A + B > C AND B + C > A AND A + C > B THEN
                CASE 
                    WHEN A = B AND B = C THEN 'Equilateral'
                    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
                    ELSE 'Scalene'
                END
            ELSE 'Not A Triangle'
        END
FROM TRIANGLES;*/

select case
when a+b<=c or b+c<=a or c+a<=b then "Not A Triangle"
when a=b and b=c then "Equilateral"
when a=b or b=c or a=c then "Isosceles"
when a!=b and b!= c then "Scalene"
end
from Triangles;
