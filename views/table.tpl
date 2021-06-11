% import csv
% from BottleTest import determine_age

<form action="/table" method="post">
    <table style="width:100%">
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>ID</th>
        <th>Age</th>
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
        <td>{{determine_age(row)}}</td>
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
      <tr>
        <td><input name="NewFirstName" type="text" placeholder="First Name" /></td>
        <td><input name="NewLastName" type="text" placeholder="Last Name" /></td>
        <td><input name="NewID" type="text" placeholder="ID" /></td>
        <td><input name="NewBirthday" type="text" placeholder="Birthday (YYYY-MM-DD)" /></td>
        <td><input name="NewAddress" type="text" placeholder="Address" /></td>
        <td><input name="NewDivision" type="text" placeholder="Division" /></td>
        <td><input name="NewTelephone" type="text" placeholder="Telephone Number" /></td>
        <td><input name="NewRelation" type="text" placeholder="Relationship" /></td>
        <td><input name="NewGender" type="text" placeholder="Gender" /></td>
        <td><input name="NewLicense" type="text" placeholder="License" /></td>
        <td><input name="NewReligion" type="text" placeholder="Religion" /></td>
        <td><input name="NewInsurance" type="text" placeholder="Insurance" /></td>
        <td><input name="NewMarital" type="text" placeholder="Marital" /></td>
        <td><input name="NewEMail" type="text" placeholder="EMail Address" /></td>
        <td><input name="NewSuperior" type="text" placeholder="Superior" /></td>
        <td><input name="NewJoinDate" type="text" placeholder="Join Date (YYYY-MM-DD)" /></td>
      </tr>
    </table>
    <input value="Submit" type="submit" />
</form>