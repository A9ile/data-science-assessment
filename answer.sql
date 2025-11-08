select t.investor_id , s.sector_name, round((t.no_of_shares * 100.0 / sum(t.no_of_shares) over ( partition by t.investor_id)),2) as share_percentage from investor_transaction t 
join sectors s on t.sector_id = s.sector_id order by t.investor_id, share_percetage desc;
