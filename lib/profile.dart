import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Profil',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              'v.2401-2001',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              ListTile(
                leading: Image.asset(
                  'assets/images/HSI.png',
                  width: 35,
                  height: 35,
                ),
                title: Text(
                  'Ahmad Mundhofa',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('ARN231-20015'),
                trailing: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.edit_document),
                  label: Text('ubah'),
                ),
              ),
              Divider(
                color: Colors.black.withOpacity(0.1),
                height: 20,
                indent: 15,
                endIndent: 15,
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.whatsapp,
                  size: 25,
                ),
                title: Text(
                  'Nomor Whatsapp',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black87.withOpacity(0.6)),
                ),
                subtitle: Text(
                  '62-8983777281',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 25,
                ),
                title: Text(
                  'Alamat',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black87.withOpacity(0.6)),
                ),
                subtitle: Text(
                  'Griya indah serpong, Kelurahan Cibinong, Kecamatan Gunung Sindur',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  size: 25,
                ),
                title: Text(
                  'Labupaten/Kota, Provinsi, Kodepos',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black87.withOpacity(0.6)),
                ),
                subtitle: Text(
                  'Kab. Bogor, JAWABARAT, 16340',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.trip_origin,
                  size: 25,
                ),
                title: Text(
                  'Status Pernikahan/Jumlah Anak',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black87.withOpacity(0.6)),
                ),
                subtitle: Text(
                  'Menikah/1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              Divider(
                color: Colors.black.withOpacity(0.1),
                height: 20,
                indent: 15,
                endIndent: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.headset_mic,
                  size: 25,
                ),
                title: Text(
                  'List Admin',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Nova Wiliyanto',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '(ARN231-20015)',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.4)),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Silsilah Ilmiyyah 6: Iman Kepada Malaikat',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Grup: ARN231-10',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Program',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.whatsapp),
                                label: Text('Hubungi'),
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.green)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(Icons.info),
                    Text(
                      'Info Lainnya',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
