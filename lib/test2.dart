import 'package:test/test.dart';
import 'bai2.dart';

void main() {
  test('AddressInfo.fromMap() creates an AddressInfo object from a map', () {
    var addressMap = {
      'province': {'id': 1, 'name': 'Hanoi', 'level': 1},
      'district': {'id': 1, 'name': 'Ba Dinh', 'level': 2, 'provinceId': 1},
      'ward': {'id': 1, 'name': 'Quan Thanh', 'level': 3, 'districtId': 1},
      'street': '123 pham van dong',
    };

    var addressInfo = AddressInfo.fromMap(addressMap);

    expect(addressInfo.province?.id, 1);
    expect(addressInfo.district?.id, 1);
    expect(addressInfo.ward?.id, 1);
    expect(addressInfo.street, '123 pham van dong');
  });

  test('UserInfo.fromMap() creates a UserInfo object from a map', () {
    var userInfoMap = {
      'name': 'lam',
      'email': 'lamtung@example.com',
      'phoneNumber': '954657343', 
      'birthDate': '2003-02-04', 
      'address': {
        'province': {'id': 1, 'name': 'Hanoi', 'level': 1},
        'district': {'id': 1, 'name': 'Ba Dinh', 'level': 2, 'provinceId': 1},
        'ward': {'id': 1, 'name': 'Quan Thanh', 'level': 3, 'districtId': 1},
        'street': '123 pham van dong',
      },
    };

    var userInfo = UserInfo.fromMap(userInfoMap);

    expect(userInfo.name, 'lam');
    expect(userInfo.email, 'lamtung@example.com');
    expect(userInfo.phoneNumber, '954657343'); 
    expect(userInfo.birthDate, DateTime.parse('2003-02-04')); 
    expect(userInfo.address?.province?.id, 1);
    expect(userInfo.address?.district?.id, 1);
    expect(userInfo.address?.ward?.id, 1);
    expect(userInfo.address?.street, '123 pham van dong');
  });
}
