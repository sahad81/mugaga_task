import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:mugaga_task/controlls/map_controller.dart';
import 'package:mugaga_task/util/dimensions.dart';
import 'package:mugaga_task/util/image.dart';

final ScrollController _scrollController = ScrollController();

class Bottomsheet {
  static showSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          // _scrollController.addListener(() {
          //   if (_scrollController.position.userScrollDirection ==
          //       ScrollDirection.reverse) {
          //     Get.find<MapController>().viewmore();
          //     log('ff');
          //   } else {
          //     // Scrolling in between
          //     log('hii');
          //   }
          // });
          return GetBuilder<MapController>(builder: (controller) {
            return Container(
                decoration: BoxDecoration(),
                height: controller.scrolled
                    ? context.height * 0.85
                    : context.height * 0.35,
                child: !controller.scrolled
                    ? CustomScrollView(
                        controller: _scrollController,
                        slivers: [
                          SliverPersistentHeader(
                              pinned: true,
                              delegate: SliverDelegate(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).cardColor,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(
                                              Dimensions.RADIUS_EXTRA_LARGE))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        Dimensions.PADDING_SIZE_SMALL),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width:
                                                  Dimensions.PADDING_SIZE_LARGE,
                                            ),
                                            Icon(Icons.south_rounded),
                                            SizedBox(
                                              width:
                                                  Dimensions.PADDING_SIZE_LARGE,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Infatuation Approved',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: Dimensions
                                                          .fontSizeExtraLarge),
                                                ),
                                                Text(
                                                  'pawerd by the infatuation ',
                                                  style: TextStyle(
                                                      color: Theme.of(context)
                                                          .disabledColor),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                              ),
                                              child: Center(
                                                child: SizedBox(
                                                  width: 30,
                                                  height: 30,
                                                  child: Icon(
                                                      Icons.highlight_remove),
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                          SliverToBoxAdapter(
                            child: Column(children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .disabledColor
                                        .withOpacity(0.02)),
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 8,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(
                                            Dimensions.PADDING_SIZE_SMALL),
                                        child: InkWell(
                                          onTap: () => controller.viewmore(),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  Theme.of(context).cardColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Dimensions.RADIUS_LARGE)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Color(0xFF2A2A2A)
                                                        .withOpacity(0.1),
                                                    blurRadius: 10,
                                                    offset: Offset(0, -5))
                                              ],
                                            ),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .all(Dimensions
                                                              .PADDING_SIZE_SMALL),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            width: 60,
                                                            height: 60,
                                                            decoration:
                                                                BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle),
                                                            child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50),
                                                                child:
                                                                    Image.asset(
                                                                  Images
                                                                      .avatar1,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                )),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets
                                                                .symmetric(
                                                                horizontal:
                                                                    Dimensions
                                                                        .PADDING_SIZE_SMALL),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'sahad kattakkadan',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          Dimensions
                                                                              .fontSizeExtraLarge,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                                ),
                                                                Text(
                                                                  "ss -tascos",
                                                                  style: TextStyle(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .disabledColor),
                                                                ),
                                                                Text(
                                                                  "Delivery,outdoor Dining +3",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: Theme.of(
                                                                              context)
                                                                          .primaryColor),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: Dimensions
                                                              .PADDING_SIZE_SMALL),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.all(
                                                                Radius.circular(
                                                                    Dimensions
                                                                        .RADIUS_EXTRA_LARGE)),
                                                            color: Theme.of(
                                                                    context)
                                                                .disabledColor
                                                                .withOpacity(
                                                                    0.2)),
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: Dimensions
                                                                .PADDING_SIZE_LARGE,
                                                            vertical: Dimensions
                                                                .PADDING_SIZE_SMALL),
                                                        child: Icon(
                                                            CupertinoIcons
                                                                .heart),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Expanded(
                                                    child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: Dimensions
                                                          .PADDING_SIZE_SMALL),
                                                  child: Text(
                                                    'A small person, thing, or amount of something is not large in physical size.She is small for her age. [+ for] The window was far too small for him to get through. Next door to the garage is a small orchard area. Stick them on using a small amount of glue',
                                                    maxLines: 4,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: Dimensions
                                                            .fontSizeDefault),
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              Dimensions.PADDING_SIZE_LARGE),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(
                                                            0.5), // Shadow color
                                                    spreadRadius:
                                                        2, // Spread radius of the shadow
                                                    blurRadius:
                                                        5, // Blur radius of the shadow
                                                    offset: Offset(0,
                                                        2), // Offset of the shadow
                                                  ),
                                                ],
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(Dimensions
                                                        .RADIUS_EXTRA_LARGE)),
                                                color: Theme.of(context)
                                                    .cardColor),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: Dimensions
                                                    .PADDING_SIZE_LARGE,
                                                vertical: Dimensions
                                                    .PADDING_SIZE_SMALL),
                                            child: InkWell(
                                                onTap: () {
                                                  controller.viewmore();
                                                },
                                                child: Text('View More')),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ]),
                          )
                        ],
                      )
                    : SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(
                                        Dimensions.PADDING_SIZE_LARGE),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: Image.asset(
                                                Images.avatar1,
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'sahad kattakkadan',
                                        style: TextStyle(
                                            fontSize:
                                                Dimensions.fontSizeExtraLarge,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "## -tacos",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .disabledColor),
                                      ),
                                      //---------rating bar pending------
                                      Text(
                                        "441 raviews",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .disabledColor),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            color: Colors.green,
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(3),
                                                child: Text(
                                                  '8.7',
                                                  style: TextStyle(
                                                      color: Theme.of(context)
                                                          .cardColor),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            ' 517 retings',
                                            style: TextStyle(
                                                color: Theme.of(context)
                                                    .disabledColor),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: Dimensions.PADDING_SIZE_SMALL,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Open Now',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: Dimensions.fontSizeLarge,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    ' 9am -8 pm',
                                    style: TextStyle(
                                        color: Theme.of(context).disabledColor),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(
                                        Dimensions.PADDING_SIZE_SMALL),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Theme.of(context)
                                              .disabledColor
                                              .withOpacity(0.2)),
                                      child: Padding(
                                          padding: EdgeInsets.all(3),
                                          child: Icon(
                                              Icons.arrow_circle_down_sharp)),
                                    ),
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(CupertinoIcons.location_solid),
                                  SizedBox(
                                    width: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                                  ),
                                  Text(
                                    '3040 e olyymbic blvd les angless ,ca 900023',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                              ),
                              Row(
                                children: [
                                  Icon(CupertinoIcons.phone),
                                  SizedBox(
                                    width: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                                  ),
                                  Text(
                                    '30403884844',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Dimensions.RADIUS_EXTRA_LARGE)),
                                        color: Theme.of(context)
                                            .disabledColor
                                            .withOpacity(0.2)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            Dimensions.PADDING_SIZE_EXTRA_LARGE,
                                        vertical:
                                            Dimensions.PADDING_SIZE_SMALL),
                                    child: Icon(CupertinoIcons.heart),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Dimensions.RADIUS_EXTRA_LARGE)),
                                        color: Theme.of(context)
                                            .disabledColor
                                            .withOpacity(0.2)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            Dimensions.PADDING_SIZE_EXTRA_LARGE,
                                        vertical:
                                            Dimensions.PADDING_SIZE_SMALL),
                                    child: Icon(Icons.directions),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Dimensions.RADIUS_EXTRA_LARGE)),
                                        color: Theme.of(context)
                                            .disabledColor
                                            .withOpacity(0.2)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            Dimensions.PADDING_SIZE_EXTRA_LARGE,
                                        vertical:
                                            Dimensions.PADDING_SIZE_SMALL),
                                    child: Icon(Icons.more_horiz_sharp),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(
                                                Dimensions.RADIUS_EXTRA_LARGE)),
                                        color: Theme.of(context).primaryColor),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical:
                                            Dimensions.PADDING_SIZE_SMALL),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Send',
                                          style: TextStyle(
                                              color:
                                                  Theme.of(context).cardColor,
                                              fontSize:
                                                  Dimensions.fontSizeLarge,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Icon(Icons.arrow_forward_ios),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Dimensions.PADDING_SIZE_LARGE,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Infatution Approved ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(Dimensions
                                                  .RADIUS_EXTRA_LARGE)),
                                          color: Theme.of(context).cardColor),
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              Dimensions.PADDING_SIZE_LARGE,
                                          vertical:
                                              Dimensions.PADDING_SIZE_SMALL),
                                      child: InkWell(
                                          onTap: () {},
                                          child: Text(
                                            'View More',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey
                                            .withOpacity(0.5), // Shadow color
                                        spreadRadius:
                                            2, // Spread radius of the shadow
                                        blurRadius:
                                            5, // Blur radius of the shadow
                                        offset: Offset(
                                            0, 2), // Offset of the shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            Dimensions.RADIUS_EXTRA_LARGE)),
                                    color: Theme.of(context).cardColor),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: Dimensions.PADDING_SIZE_LARGE,
                                    vertical: Dimensions.PADDING_SIZE_SMALL),
                                child: InkWell(
                                    onTap: () {},
                                    child: Text(
                                        'A small person, thing, or amount of something is not large in physical size.She is small for her age. [+ for] The window was far too small for him to get through. Next door to the garage is a small orchard area. Stick them on using a small amount of glue')),
                              ),
                            ],
                          ),
                        ),
                      ));
          });
        });
  }
}

class SliverDelegate extends SliverPersistentHeaderDelegate {
  Widget child;

  SliverDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 84;

  @override
  double get minExtent => 84;

  @override
  bool shouldRebuild(SliverDelegate oldDelegate) {
    return oldDelegate.maxExtent != 50 ||
        oldDelegate.minExtent != 50 ||
        child != oldDelegate.child;
  }
}
