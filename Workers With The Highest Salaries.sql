select worker_title, salary
from worker join title
on worker.worker_id = title.worker_ref_id
where salary = (select max(salary) from worker)
order by salary desc;
