import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/image/profil.jpg'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Customer Name',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              _buildProfileField('Ulfah Sakinah'),
              SizedBox(height: 20),
              Text(
                'Gender',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              _buildProfileField('Famale'),
              SizedBox(height: 20),
              Text(
                'Address',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              _buildProfileField('Jl. Sukodono No. 28, Jombang'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileField(String value) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity, //
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        value,
        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
      ),
    );
  }
}
