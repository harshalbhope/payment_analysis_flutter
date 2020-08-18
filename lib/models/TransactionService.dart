import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Transactions {
  String serviceName;
  String serviceSection;
  String serviceCost;
  String date;
  IconData serviceIcon;

  Transactions(
      {this.date,
      this.serviceName,
      this.serviceCost,
      this.serviceSection,
      this.serviceIcon});
}

List<Transactions> transactions = [
  Transactions(
    date: 'Mar 20',
    serviceName: 'Dribble',
    serviceCost: '400',
    serviceSection: 'Pro',
    serviceIcon: MdiIcons.dribbble,
  ),
  Transactions(
    date: 'Mar 21',
    serviceName: 'Netflix',
    serviceCost: '350',
    serviceSection: 'Premium',
    serviceIcon: MdiIcons.netflix,
  ),
  Transactions(
    date: 'Mar 22',
    serviceName: 'Spotify',
    serviceCost: '300',
    serviceSection: 'Premium',
    serviceIcon: MdiIcons.spotify,
  ),
  Transactions(
    date: 'Mar 23',
    serviceName: 'Amazon',
    serviceCost: '200',
    serviceSection: 'VIP',
    serviceIcon: MdiIcons.amazon,
  ),
  Transactions(
    date: 'Mar 24',
    serviceName: 'Hotstar',
    serviceCost: '600',
    serviceSection: 'Ultra',
    serviceIcon: MdiIcons.hospital,
  ),
];
