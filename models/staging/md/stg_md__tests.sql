with
    source as (select * from {{ source("md", "log_tests") }}),

    tests as (
        
        select
        
            id as tests_id,
            ip_address as tests_ip,
            *

    from source
    
    )

select *
from tests
