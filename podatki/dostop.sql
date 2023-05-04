-- dovolimo povezavo in uporabo scheme public javnosti
GRANT CONNECT ON DATABASE sem2023_nikap TO javnost;
GRANT USAGE ON SCHEMA public TO javnost;

-- dovolimo vse nekemu konkretnemu uporabniku (WITH GRANT option, dovoli uporabniku dovoljevati pravice)
GRANT ALL ON DATABASE sem2023_nikap TO leah WITH GRANT OPTION;
GRANT ALL ON DATABASE sem2023_nikap TO spelab WITH GRANT OPTION;
GRANT ALL ON SCHEMA public TO leah WITH GRANT OPTION;
GRANT ALL ON SCHEMA public TO spelab WITH GRANT OPTION;

-- po ustvarjanju tabel
GRANT ALL ON ALL TABLES IN SCHEMA public TO leah WITH GRANT OPTION;
GRANT ALL ON ALL TABLES IN SCHEMA public TO spelab WITH GRANT OPTION;
GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO leah WITH GRANT OPTION;
GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO spelab WITH GRANT OPTION;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO javnost;

-- dodatne pravice za uporabo aplikacije
--GRANT INSERT ON tabela TO javnost;
--GRANT USAGE ON ALL SEQUENCES IN SCHEMA public TO javnost;