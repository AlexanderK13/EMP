% import csv
% import datetime

<table style="width:100%">
  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>ID</th>
    <th>Birthday</th>
    <th>address</th>
    <th>division</th>
    <th>telephone</th>
    <th>relation</th>
    <th>gender</th>
    <th>licence</th>
    <th>religion</th>
    <th>insurance</th>
    <th>marital</th>
    <th>E-Mail</th>
    <th>superior</th>
    <th>joined in</th>
  </tr>
%  with open("employeeFile.csv") as csvfile:
%		csv_reader = csv.reader(csvfile, delimiter=",")
%		for row in csv_reader:
  <tr>
    <td>{{row[0]}}</td>
    <td>{{row[1]}}</td>
    <td>{{row[2]}}</td>
    <td>{{row[3]}}</td>
    <td>{{row[4]}}</td>
    <td>{{row[5]}}</td>
    <td>{{row[6]}}</td>
    <td>{{row[7]}}</td>
    <td>{{row[8]}}</td>
    <td>{{row[9]}}</td>
    <td>{{row[10]}}</td>
    <td>{{row[11]}}</td>
    <td>{{row[12]}}</td>
    <td>{{row[13]}}</td>
    <td>{{row[14]}}</td>
    <td>{{row[15]}}</td>
  </tr>
% end
</table> 