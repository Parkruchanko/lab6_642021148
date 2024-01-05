class Hobby {
   String name;
   bool value;

  Hobby({required this.name, required this.value});

  static List<Hobby> getHobby(){
    return[
      Hobby(name: "นอน", value: false),
      Hobby(name: "เล่นเกมส์", value: false),
      Hobby(name: "ดูหนัง", value: false),
    ];
      
    
  }

}