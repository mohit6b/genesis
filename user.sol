pragma solidity >=0.4.24 <=0.6.0;


contract User {

    struct UserDetails {
        string name;
        address addressId;
        string role;
    }

    UserDetails[] public userList;
    mapping(string => bool) newUser;

    function addUser(string name, address addressId, string role) public {

        require(!newUser[addressId]);

        UserDetails memory newuser = UserDetails({
            name: name,
            addressId: addressId,
            role: role
            });
        newUser[addressId] = true;
        userList.push(newuser);
    }

    function getUserCount() public view returns(uint) {
        return userList.length;
    }

}