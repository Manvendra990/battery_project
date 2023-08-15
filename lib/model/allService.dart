class AllService {
  final int id;
  final String serviceName;
  final String description;
  final String created_at;
  final String updated_at;
  


  AllService({
    required this.id,
    required this.serviceName,
    required this.description,
    required this.created_at,
    required this.updated_at
   });



factory AllService.fromJson(Map<String, dynamic> json) {
    return AllService(
      id: json['id'],
      serviceName: json['serviceName'], // Update this line to correctly map to the "serviceName" field
      description: json['description'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
}


}

