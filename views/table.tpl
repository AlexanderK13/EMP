% import Functions

<style>
#employers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#employers td, #employers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#employers tr:nth-child(even){background-color: #f2f2f2;}

#employers tr:hover {background-color: #ddd;}

#employers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
<form action="/table" method="post">
    <table id="employers" style="width:70%">
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
%	records = Functions.sql()  
%	for row in records:
      <tr>
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
        <td>{{row[16]}}</td>
        <td>{{row[17]}}</td>
		<td>{{row[18]}}</td>
      </tr>
% end
      <tr>
        <td><input name="NewFirstName" type="text" placeholder="First Name" /></td>
        <td><input name="NewLastName" type="text" placeholder="Last Name" /></td>
        <td><input name="NewID" type="text" placeholder="ID" /></td>
        <td><input name="NewBirthday" type="text" placeholder="Birthday (DD.MM.YYYY)" /></td>
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
        <td><input name="NewJoinDate" type="text" placeholder="Join Date (DD.MM.YYYY)" /></td>
      </tr>
    </table>
    <input value="Submit" type="submit" />
</form>