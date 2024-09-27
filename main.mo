//dfx start --clean --no-artificial-delay
//ikinci terminalde
//dfx deploy --network ic
actor calculator{
    var hucre : Int = 0;

     //toplama 
    public func toplama(s : Int) : async Int {
       hucre += s;
       hucre
    };
      //çıkarma
      public func cikarma(s : Int) : async Int {
       hucre -= s;
       hucre
    };
    //çarpma
     public func carpma(s : Int) : async Int {
       hucre *= s;
       hucre
    };
    //bolme
     public func bolme(s : Int) : async ?Int {
       if ( s == 0 ) {
         null
       }else {
         hucre /= s;
         ?hucre
       };
    };
    public func temizle() : async () {
      hucre := 0;
    };
}
