class student
{
  String? result;
  int? no_records;
  List<datalist>? data;

  student(this.result, this.no_records, this.data);
  
  factory student.fromJson(Map m)
  {
    List temp=m['data'];
    List<datalist> temp2=temp.map((e) => datalist.fromJson(e)).toList() ;
    return student(m['result'], m['no_records'], temp2);
  }
  
}
//map-class
class datalist
{
  String? id,name,email,contact,city;

  datalist(this.id, this.name, this.email, this.contact, this.city);


  @override
  String toString() {
    return 'datalist{id: $id, name: $name, email: $email, contact: $contact, city: $city}';
  }

  factory datalist.fromJson(Map m)
  {
    return datalist(m['id'], m['name'], m['email'], m['contact'], m['city']);
  }
}