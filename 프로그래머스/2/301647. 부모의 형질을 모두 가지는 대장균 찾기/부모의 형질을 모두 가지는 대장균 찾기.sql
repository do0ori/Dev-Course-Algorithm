SELECT ED.ID, ED.GENOTYPE, EDC.PARENT_GENOTYPE
FROM ECOLI_DATA AS ED
LEFT JOIN (SELECT ID, GENOTYPE AS PARENT_GENOTYPE FROM ECOLI_DATA) AS EDC ON ED.PARENT_ID = EDC.ID
WHERE ED.GENOTYPE & EDC.PARENT_GENOTYPE = EDC.PARENT_GENOTYPE
ORDER BY ID ASC;