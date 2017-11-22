DEFLATORS = ipums/cps_00004.csv.gz
SERIES = ipums/cps_00002.csv.gz

RSERIES = ipums/rseries.csv.gz

$(RSERIES): $(DEFLATORS) $(SERIES)
	bash -c "./realize <(zcat $(DEFLATORS)) <(zcat $(SERIES))" | gzip > $(RSERIES)
