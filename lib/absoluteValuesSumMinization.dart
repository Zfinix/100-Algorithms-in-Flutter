class AbsoluteValuesSumMinization{
  static cal(List a){

     var isEven = a.length % 2 == 0;

  if (isEven) {
    return a[(a.length ~/ 2) - 1];
  } else {
    return a[(a.length / 2).floor()];
  }
    
  }
}