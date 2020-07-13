import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Transactions {
  String service;
  String serviceSection;
  String serviceCost;
  String date;
  IconData serviceIcon;

  Transactions(
      {this.date,
      this.service,
      this.serviceCost,
      this.serviceSection,
      this.serviceIcon});
}

List<Transactions> transactions = [
  Transactions(
    date: 'Mar 20',
    service: 'Dribble',
    serviceCost: '400',
    serviceSection: 'Pro',
    serviceIcon: MdiIcons.dribbble,
  ),
  Transactions(
    date: 'Mar 21',
    service: 'Netflix',
    serviceCost: '350',
    serviceSection: 'Premium',
    serviceIcon: MdiIcons.netflix,
  ),
  Transactions(
    date: 'Mar 22',
    service: 'Spotify',
    serviceCost: '300',
    serviceSection: 'Premium',
    serviceIcon: MdiIcons.spotify,
  ),
  Transactions(
    date: 'Mar 23',
    service: 'Amazon',
    serviceCost: '200',
    serviceSection: 'VIP',
    serviceIcon: MdiIcons.amazon,
  ),
  Transactions(
    date: 'Mar 24',
    service: 'Hotstar',
    serviceCost: '600',
    serviceSection: 'Ultra',
    serviceIcon: MdiIcons.hospital,
  ),
];
