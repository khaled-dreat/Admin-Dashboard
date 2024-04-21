import 'dart:async';

import 'package:admin_dashboard/core/constant/app_image.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

//  ************************ AS & SHOW **************************

import 'package:expandable_page_view/expandable_page_view.dart'
    show ExpandablePageView;
import 'dart:io' show Directory, Platform, SocketException;
import 'dart:developer' as dev;
import 'dart:convert' as convert;
import 'package:path/path.dart' as path;

// import 'package:validators/validators.dart' as validators;

//  ************************ App Start **************************
part '../../admin_dashboard/app_start.dart';

// ! ************************ Core **************************

part "../widgets/adaptive_layout/adaptive_layout.dart";
part "../theme/app_theme.dart";
part "../widgets/user_info_list_title/user_info_list_title.dart";
part '../widgets/drawer_item/drawer_item.dart';

// ?  ************************ features **************************
//  ************************ Checkout **************************

//  ************************ Home **************************
part "../../features/home/presentation/view/home/home_view.dart";
part "../../features/home/presentation/view/home/desktop/desktop_layout.dart";
part "../../features/home/data/models/m_drawer_item.dart";
part "../../features/home/presentation/view/home/widgets/drawer/drawer_item_list_view.dart";
part "../../features/home/presentation/view/home/widgets/quick_invoice/active_and_inactive_item.dart";
part "../../features/home/presentation/view/home/widgets/drawer/custom_drawer.dart";
part "../../features/home/presentation/view/home/widgets/all_expenses/all_expenses.dart";
part "../../features/home/presentation/view/home/widgets/all_expenses/all_expenses_header.dart";
part "../../features/home/data/models/m_all_expensess_item.dart";
part "../../features/home/presentation/view/home/widgets/all_expenses/inactive_active_all_expensess_item.dart";
part "../../features/home/presentation/view/home/widgets/all_expenses/all_expensess_item.dart";
part "../../features/home/presentation/view/home/widgets/all_expenses/all_expensess_item_list_view.dart";
part "../widgets/custom_background_container/custom_background_container.dart";
part "../../features/home/presentation/view/home/widgets/quick_invoice/quick_invoice_header.dart";
part "../../features/home/presentation/view/home/widgets/quick_invoice/quick_invoice.dart";
part "../../features/home/data/models/m_user_info.dart";
part "../../features/home/presentation/view/home/widgets/quick_invoice/latest_transcton_list_view.dart";
part "../../features/home/presentation/view/home/widgets/quick_invoice/latest_transcton.dart";
part "../widgets/custom_button/custom_button.dart";
part "../../features/home/presentation/view/home/widgets/quick_invoice/quick_invoice_form.dart";
part "../../features/home/presentation/view/home/widgets/quick_invoice/title_text_field.dart";
part "../../features/home/presentation/view/home/widgets/quick_invoice/custom_text_form.dart";
part "../../features/home/presentation/view/home/widgets/all_expensess_and_quick_invoice_section.dart";
part "../../features/home/presentation/view/home/widgets/my_card/my_card.dart";
part "../../features/home/presentation/view/home/widgets/my_card/my_card_page_view.dart";
part "../../features/home/presentation/view/home/widgets/my_card/custom_dot_indicator.dart";
part "../../features/home/presentation/view/home/widgets/my_card/dot_indicator.dart";
part "../../features/home/presentation/view/home/widgets/my_card/my_card_section.dart";
part "../../features/home/presentation/view/home/widgets/transction/transction_history.dart";
part "../../features/home/data/models/m_transctio.dart";
part "../../features/home/presentation/view/home/widgets/transction/transction_history_header.dart";
part "../../features/home/presentation/view/home/widgets/transction/transction_history_listview.dart";
part "../../features/home/presentation/view/home/widgets/transction/transction_item.dart";
part "../../features/home/presentation/view/home/widgets/my_card_and_transction_history_section.dart";
part "../../features/home/presentation/view/home/widgets/income_section.dart";
part "../../features/home/data/models/item_details_model.dart";
part "../../features/home/presentation/view/home/tablet/tablet_layout.dart";
part "../../features/home/presentation/view/home/mobile/mobile_layout.dart";

//  ************************ View **************************

//  ************************ Products Details **************************


//  ************************ login Page **************************


//  ************************ Successfully Order **************************
