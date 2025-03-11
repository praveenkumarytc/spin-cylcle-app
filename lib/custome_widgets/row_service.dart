import 'package:flutter/material.dart';

class RowService extends StatefulWidget {
  const RowService({super.key});

  @override
  State<RowService> createState() => _RowServiceState();
}

class _RowServiceState extends State<RowService> {
  @override
  Widget build(BuildContext context) {
    return  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 120,
                                          width:
                                              MediaQuery.of(
                                                context,
                                              ).size.width *
                                              .26,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        Container(
                                          height: 120,
                                          width:
                                              MediaQuery.of(
                                                context,
                                              ).size.width *
                                              .26,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        Container(
                                          height: 120,
                                          width:
                                              MediaQuery.of(
                                                context,
                                              ).size.width *
                                              .26,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ],
                                    );
  }
}