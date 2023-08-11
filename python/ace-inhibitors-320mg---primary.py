# Evangelos Kontopantelis, David A Springate, David Reeves, Darren M. Aschroff, Martin Rutter, Iain Buchan, Tim Doran, Matthias Pierce, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"12313","system":"gprdproduct"},{"code":"13589","system":"gprdproduct"},{"code":"14478","system":"gprdproduct"},{"code":"17686","system":"gprdproduct"},{"code":"18200","system":"gprdproduct"},{"code":"18219","system":"gprdproduct"},{"code":"18903","system":"gprdproduct"},{"code":"18910","system":"gprdproduct"},{"code":"1904","system":"gprdproduct"},{"code":"19198","system":"gprdproduct"},{"code":"21231","system":"gprdproduct"},{"code":"22439","system":"gprdproduct"},{"code":"24041","system":"gprdproduct"},{"code":"27520","system":"gprdproduct"},{"code":"29634","system":"gprdproduct"},{"code":"2982","system":"gprdproduct"},{"code":"31587","system":"gprdproduct"},{"code":"31716","system":"gprdproduct"},{"code":"32560","system":"gprdproduct"},{"code":"33078","system":"gprdproduct"},{"code":"33353","system":"gprdproduct"},{"code":"34453","system":"gprdproduct"},{"code":"34696","system":"gprdproduct"},{"code":"34712","system":"gprdproduct"},{"code":"34768","system":"gprdproduct"},{"code":"34798","system":"gprdproduct"},{"code":"34799","system":"gprdproduct"},{"code":"34953","system":"gprdproduct"},{"code":"35380","system":"gprdproduct"},{"code":"37573","system":"gprdproduct"},{"code":"38854","system":"gprdproduct"},{"code":"39021","system":"gprdproduct"},{"code":"39199","system":"gprdproduct"},{"code":"39984","system":"gprdproduct"},{"code":"40316","system":"gprdproduct"},{"code":"41522","system":"gprdproduct"},{"code":"42902","system":"gprdproduct"},{"code":"43413","system":"gprdproduct"},{"code":"45324","system":"gprdproduct"},{"code":"46355","system":"gprdproduct"},{"code":"46365","system":"gprdproduct"},{"code":"46687","system":"gprdproduct"},{"code":"46979","system":"gprdproduct"},{"code":"5159","system":"gprdproduct"},{"code":"5189","system":"gprdproduct"},{"code":"6243","system":"gprdproduct"},{"code":"6285","system":"gprdproduct"},{"code":"6468","system":"gprdproduct"},{"code":"69","system":"gprdproduct"},{"code":"8105","system":"gprdproduct"},{"code":"8268","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ace-inhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ace-inhibitors-320mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ace-inhibitors-320mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ace-inhibitors-320mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
