-- -- Make ret_titles
-- SELECT ce.emp_no,
--    ce.first_name,
--    ce.last_name,
--    ti.title,
--    ti.from_date,
--    ti.to_date
--  INTO ret_titles
--  FROM employees AS ce
--  	INNER JOIN titles AS ti
--      ON (ce.emp_no = ti.emp_no)
-- WHERE birth_date BETWEEN '1965-01-01' AND '1965-12-31'
-- ORDER BY ce.emp_no;


-- SELECT * From ret_titles

-- Use Dictinct with Orderby to remove duplicate rows
--  SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
--  INTO unique_titles
--  FROM ret_titles
--  WHERE to_date = ('9999-01-01')
--  ORDER BY emp_no ASC;

-- SELECT * FROM unique_titles

-- Use Dictinct with Orderby to remove duplicate rows retiring_titles
--    SELECT COUNT(title), title
--    INTO retiring_titles
--    FROM unique_titles
--    GROUP BY title
--    ORDER BY COUNT DESC;

--    SELECT * FROM retiring_titles

-- Mentorship Program
--  SELECT DISTINCT ON (e.emp_no) e.emp_no,
--    e.first_name,
--    e.last_name,
--    e.birth_date,
--    de.from_date,
--    de.to_date,
--    ti.title
--  INTO mentorship_program
--  FROM employees as e
--  INNER JOIN dept_emp as de
--    ON (e.emp_no = de.emp_no)
--  INNER JOIN titles as ti
--    ON (e.emp_no = ti.emp_no)
--  WHERE (de.to_date = '9999-01-01')
--  AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
--  ORDER BY e.emp_no;

 SELECT * FROM mentorship_program
