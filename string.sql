-- lowease-- 
select lower('HolELL') as lowertext;
-- Converts all characters of a string to uppercase.
select upper('hheLLO') as uppertext;
-- Capitalizes the first letter of each word
-- select INITCAP('hello worrls') as result;
-- RETURN LENGTH
SELECT LENGTH('HELOOO') AS HELLOLENGTH;

select concat('helllo','','world') as full;
-- Extracts a portion of a string 
select substring('helooufudhjfnj',1,4) as extrzctedout;
-- Returns the leftmost part of a string
select upper(left('helooo',2));
-- Returns the rightmost part of a string
select right('helooo',2 ) as right_text;
-- trim white space
select trim('   helloo   ') as trimmed_text;
select ltrim(' helooo ') as ltrimedtext; 
select rtrim('hellooo    ')as rtrimeedtext;
-- Replaces occurrences of a substring with another substring.
select replace('helooo world' ,'world','sql') as replace_string;
-- Finds the position of a substring within a string.
select charindex('world',"hello world") as postion_ofworld;

SELECT LOCATE('world', 'hello world') AS position_of_world;
-- Returns the position of the first occurrence of a substring.
select instr('heloo world','world') as postion;
-- Reverses the order of characters in a string.
select reverse('helooo') as reversestring;
-- Returns the ASCII value of the first character in a string.
select ascii('A') as asci_value;
-- Concatenates strings with a specified separator
SELECT CONCAT_WS('-', 'hello', 'world') AS combined_text; -- Output: hello-world
-- Pads a string to a specified length with a specific character.
SELECT LPAD('SQL', 5, '0') AS lpad_text; -- Output: 00SQL
SELECT RPAD('SQL', 5, '0') AS rpad_text; -- Output: SQL00





