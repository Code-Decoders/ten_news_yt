String getMonthNumberFromName({String month}) {
  switch (month) {
    case 'Jan':
      return '01';
      break;
    case 'Feb':
      return '02';
      break;
    case 'Mar':
      return '03';
      break;
    case 'Apr':
      return '04';
      break;
    case 'May':
      return '05';
      break;
    case 'Jun':
      return '06';
      break;
    case 'Jul':
      return '07';
      break;
    case 'Aug':
      return '08';
      break;
    case 'Sep':
      return '09';
      break;
    case 'Oct':
      return '10';
      break;
    case 'Nov':
      return '11';
      break;
    case 'Dec':
      return '12';
      break;
    default:
      return '';
      break;
  }
}

getMonthNumberInWords({int month}) {
  switch (month) {
    case 1:
      return 'Jan';
      break;
    case 2:
      return 'Feb';
      break;
    case 3:
      return 'Mar';
      break;
    case 4:
      return 'Apr';
      break;
    case 5:
      return 'May';
      break;
    case 6:
      return 'Jun';
      break;
    case 7:
      return 'Jul';
      break;
    case 8:
      return 'Aug';
      break;
    case 9:
      return 'Sep';
      break;
    case 10:
      return 'Oct';
      break;
    case 11:
      return 'Nov';
      break;
    case 12:
      return 'Dec';
      break;
  }
}

