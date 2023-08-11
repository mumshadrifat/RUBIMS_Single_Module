class UserInfo {
  String? id;
  String? displayName;
  String? email;
  int? isActive;
  int? userId;
  String? username;
  Permissions? permissions;

  UserOffice? userOffice;

  List<UserLocations>? userLocations;
  int? tenantId;

  UserInfo({this.id, this.displayName, this.email, this.isActive, this.userId, this.username, this.permissions, this.userOffice,  this.userLocations, this.tenantId});

  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    displayName = json['DisplayName'];
    email = json['Email'];
    isActive = json['IsActive'];
    userId = json['UserId'];
    username = json['Username'];
    permissions = json['Permissions'] != null ? new Permissions.fromJson(json['Permissions']) : null;


    userOffice = json['UserOffice'] != null ? new UserOffice.fromJson(json['UserOffice']) : null;

    if (json['UserLocations'] != null) {
      userLocations = <UserLocations>[];
      json['UserLocations'].forEach((v) { userLocations!.add(new UserLocations.fromJson(v)); });
    }
    tenantId = json['TenantId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['DisplayName'] = this.displayName;
    data['Email'] = this.email;
    data['IsActive'] = this.isActive;
    data['UserId'] = this.userId;
    data['Username'] = this.username;
    if (this.permissions != null) {
      data['Permissions'] = this.permissions!.toJson();
    }


    if (this.userOffice != null) {
      data['UserOffice'] = this.userOffice!.toJson();
    }

    if (this.userLocations != null) {
      data['UserLocations'] = this.userLocations!.map((v) => v.toJson()).toList();
    }
    data['TenantId'] = this.tenantId;
    return data;
  }
}

class Permissions {




Permissions.fromJson(Map<String, dynamic> json) {
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  return data;
}
}

class UserOffice {
  int? designationId;
  int? officeTypeId;
  int? regionId;
  int? divisionId;
  int? districtId;

  UserOffice({this.designationId, this.officeTypeId, this.regionId, this.divisionId, this.districtId});

  UserOffice.fromJson(Map<String, dynamic> json) {
    designationId = json['DesignationId'];
    officeTypeId = json['OfficeTypeId'];
    regionId = json['RegionId'];
    divisionId = json['DivisionId'];
    districtId = json['DistrictId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DesignationId'] = this.designationId;
    data['OfficeTypeId'] = this.officeTypeId;
    data['RegionId'] = this.regionId;
    data['DivisionId'] = this.divisionId;
    data['DistrictId'] = this.districtId;
    return data;
  }
}

class UserLocations {
  int? regionId;
  int? divisionId;
  int? districtId;
  int? upazilaId;

  UserLocations({this.regionId, this.divisionId, this.districtId, this.upazilaId});

  UserLocations.fromJson(Map<String, dynamic> json) {
    regionId = json['RegionId'];
    divisionId = json['DivisionId'];
    districtId = json['DistrictId'];
    upazilaId = json['UpazilaId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RegionId'] = this.regionId;
    data['DivisionId'] = this.divisionId;
    data['DistrictId'] = this.districtId;
    data['UpazilaId'] = this.upazilaId;
    return data;
  }
}