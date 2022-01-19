reduceNumber(firstNameNumber) {
  int firstNameNumberReduced = 0;
  if (firstNameNumber == 11 || firstNameNumber == 22 || firstNameNumber <= 9) {
    // if the number is 11 or 22 or 9 or less
    return firstNameNumber; // we're done
  } else if (firstNameNumber > 9) {
    List firstNameNumberCompoundList = firstNameNumber
        .toString()
        .split(""); // string splits into strings, not integers
    firstNameNumberCompoundList.forEach((element) {
      // iterate over the list
      int notAstring = int.parse(
          element); // convert each string element into an integer, step 1
      assert(notAstring is int); // convert each string element into an integer, step 2
      firstNameNumberReduced =
          firstNameNumberReduced + notAstring; // add the integers together
    });
    return reduceNumber(firstNameNumberReduced); // recursive
  } else {
    print("Error in reduceNumber function.");
  }
}

reduceCompoundNumber(compoundNumber) {
  int compoundNumberReduced = 0;
  if (compoundNumber <= 73) {
    return compoundNumber;
  } else if (compoundNumber > 73) {
    List compoundNumberList = compoundNumber.toString().split(
        ""); // string splits into strings, not integers
    compoundNumberList.forEach((element) {
      // iterate over the list
      int notAstring = int.parse(
          element); // convert each string element into an integer, step 1
      assert(notAstring is int); // convert each string element into an integer, step 2
      compoundNumberReduced =
          compoundNumberReduced + notAstring; // add the integers together
    });
    return reduceCompoundNumber(compoundNumberReduced); // recursive
  } else {
    print("Error in reduceCompoundNumber function.");
  }
}

reduceSingleNumber(compoundNumber) {
  if (compoundNumber <= 9) { // if single digit, we're done
    return compoundNumber;
  } else if (compoundNumber > 9) { // if two digits
    var singlesDigit = compoundNumber %
        10; // divide by ten and take the modulo (remainder)
    var tensDigit = ((compoundNumber - singlesDigit) / 10) %
        10; // subtract the singles digit, divide by ten then divide by ten again and take the modulo
    int singleNumber = singlesDigit + tensDigit
        .toInt(); // convert tensDigit to an integer and add to the singlesDigit
    return reduceSingleNumber(singleNumber); // recursive
  } else {
    print("Error in reduceSingleNumber function.");
  }
}

convertNameToNumber(firstName) {
  List firstNameList = firstName.split("");
  int firstNameNumber = 0;
  firstNameList.forEach((letter) {
    switch (letter) {
      case 'a':
      case 'A':
        firstNameNumber = firstNameNumber + 1;
        break;
      case 'b':
      case 'B':
        firstNameNumber = firstNameNumber + 2;
        break;
      case 'c':
      case 'C':
        firstNameNumber = firstNameNumber + 3;
        break;
      case 'd':
      case 'D':
        firstNameNumber = firstNameNumber + 4;
        break;
      case 'e':
      case 'E':
        firstNameNumber = firstNameNumber + 5;
        break;
      case 'f':
      case 'F':
        firstNameNumber = firstNameNumber + 8;
        break;
      case 'g':
      case 'G':
        firstNameNumber = firstNameNumber + 3;
        break;
      case 'h':
      case 'H':
        firstNameNumber = firstNameNumber + 5;
        break;
      case 'i':
      case 'I':
        firstNameNumber = firstNameNumber + 1;
        break;
      case 'j':
      case 'J':
        firstNameNumber = firstNameNumber + 1;
        break;
      case 'k':
      case 'K':
        firstNameNumber = firstNameNumber + 2;
        break;
      case 'l':
      case 'L':
        firstNameNumber = firstNameNumber + 3;
        break;
      case 'm':
      case 'M':
        firstNameNumber = firstNameNumber + 4;
        break;
      case 'n':
      case 'N':
        firstNameNumber = firstNameNumber + 5;
        break;
      case 'o':
      case 'O':
        firstNameNumber = firstNameNumber + 7;
        break;
      case 'p':
      case 'P':
        firstNameNumber = firstNameNumber + 8;
        break;
      case 'q':
      case 'Q':
        firstNameNumber = firstNameNumber + 1;
        break;
      case 'r':
      case 'R':
        firstNameNumber = firstNameNumber + 2;
        break;
      case 's':
      case 'S':
        firstNameNumber = firstNameNumber + 3;
        break;
      case 't':
      case 'T':
        firstNameNumber = firstNameNumber + 4;
        break;
      case 'u':
      case 'U':
        firstNameNumber = firstNameNumber + 6;
        break;
      case 'v':
      case 'V':
        firstNameNumber = firstNameNumber + 6;
        break;
      case 'w':
      case 'W':
        firstNameNumber = firstNameNumber + 6;
        break;
      case 'x':
      case 'X':
        firstNameNumber = firstNameNumber + 5;
        break;
      case 'y':
      case 'Y':
        firstNameNumber = firstNameNumber + 1;
        break;
      case 'z':
      case 'Z':
        firstNameNumber = firstNameNumber + 7;
        break;
      case '-':
        break;
      default:
        print("Error: Not a letter.");
    }
  });
  return reduceNumber(firstNameNumber);
}