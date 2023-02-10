import csv

#read input and output files
with open('output_1.txt') as csv_file, open('output_2.txt', mode='w') as csv_file2:
    
    csv_reader = list(csv.reader(csv_file, delimiter=' '))
    csv_writer = csv.writer(csv_file2, delimiter=' ')

    # count the widths of each columns
    widths = [max(len(row[i]) for row in csv_reader) for i in range(len(csv_reader[0]))]
    nW = []
    #select the columns widths for the first two columns and insert in array with columns widhts
    nW[:2] = widths[:2]
    
    #any other columns will have the fixed 3 space widhts
    for x in range(3, len(widths)+1):
        nW.append(3)
  
    # for each row the code will use zip to adjust and insert first two columns with appropriate space 
    # other columns will have fixed 3 space widhts
    for row in csv_reader:
        csv_writer.writerow({'  '.join(cell.ljust(width) for cell, width in zip(row, nW))})
    print('Write in output_2.txt')
