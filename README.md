# db

# mig sql 1
update CG_PGMSQLR a inner join CG_PGMSQL b
    on a.pjtseq = b.pjtseq and a.pgmseq = b.pgmseq and a.sqlid = b.sqlid
set a.sqlseq = b.sqlseq
where a.sqlseq is null