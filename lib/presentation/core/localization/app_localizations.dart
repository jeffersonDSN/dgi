import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_pt.dart';

abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('pt')
  ];

  String get text;

  String get selectLanguage;

  String get english;

  String get spanish;

  String get portuguese;

  String get welcome;

  String get welcomeCaption;

  String get hello;

  String get home;

  String get schedule;

  String get project;

  String get projects;

  String get clients;

  String get employee;

  String get employees;

  String get settings;

  String get signout;

  String get signinYourAccount;

  String get userName;

  String get password;

  String get signin;

  String get donotHaveAccount;

  String get signup;

  String get enterYourUserName;

  String get enterYourpassword;

  String get usernamePasswordIncorrect;

  String get startTrialToday;

  String get firstName;

  String get middleName;

  String get isRequired;

  String get lastName;

  String get companyName;

  String get email;

  String get phoneNumber;

  String get haveAccount;

  String get editProject;

  String get name;

  String get client;

  String get startDate;

  String get expectedEndDate;

  String get budget;

  String get status;

  String get action;

  String get address;

  String get city;

  String get state;

  String get zipCode;

  String get details;

  String get description;

  String get createProject;

  String get updateProject;

  String get streetAddress;

  String get aptUnit;

  String get title;

  String get estEffort;

  String get hours;

  String get priority;

  String get task;

  String get tasks;

  String get newTask;

  String get newClient;

  String get newEmployee;

  String get editEmployee;

  String get editClient;

  String get editTask;

  String get createTask;

  String get updateTask;

  String get timecards;

  String get finance;

  String get totalHours;

  String get totalPayroll;

  String get started;

  String get end;

  String get selectPeriod;

  String get allocationHoursProject;

  String get hoursAssignedProject;

  String get hoursNotAssignedProject;

  String get notes;

  String get assignTo;

  String get addEmployee;

  String get hasNoTask;

  String get hasNoProject;

  String get hasNoClient;

  String get department;

  String get position;

  String get hourlyRate;

  String get account;

  String get planning;

  String get planned;

  String get inProgress;

  String get blocked;

  String get concluded;

  String get save;

  String get cancel;

  String get submit;

  String get close;

  String get low;

  String get medium;

  String get high;

  String get toDo;

  String get done;

  String get chat;

  String get sendMessage;

  String get hasNoEmployeesCheckedIn;

  String get employeesWhoCheckedIn;

  String get lastCheckIn;

  String get location;

  String get projectStatusDistribution;

  String get taskStatusDistribution;

  String get newAppointment;

  String get editAppointment;

  String get table;

  String get board;

  String get ganttChart;

  String get attachment;

  String get addAttachment;

  String get progress;

  String get month;

  String get week;

  String get day;

  String get sun;

  String get mon;

  String get tue;

  String get wed;

  String get thu;

  String get fri;

  String get sat;

  String get invoice;

  String get invoiceDate;

  String get dueDate;

  String get addItem;

  String get date;

  String get hoursWorked;

  String get service;

  String get qty;

  String get hrs;

  String get rate;

  String get amount;

  String get customerMessage;

  String get total;

  String get draft;

  String get sent;

  String get partiallyPaid;

  String get paid;

  String get overdue;

  String get cancelled;

  String get refunded;

  String get failed;

  String get remove;

  String get edit;

  String get shareWithClient;

  String get actions;

  String get subTotal;

  String get page;

  String get issueDate;

  String get invoiceTo;

  String get downloadPDF;

  String get balance;

  String get expenses;

  String get invoices;

  String get cancelInvoice;

  String get notDueYet;

  String get markAsPaid;

  String get pending;

  String get approved;

  String get cash;

  String get creditCard;

  String get debitCard;

  String get bankAccount;

  String get check;

  String get credit;

  String get debit;

  String get number;

  String get bankName;

  String get newCreditCard;

  String get categories;

  String get newCategory;

  String get expenseSettings;

  String get expense;

  String get overview;

  String get newExpenses;

  String get newInvoices;

  String get linkExpenseToProject;

  String get paymentMethod;

  String get method;

  String get unlinkExpenseFromProject;

  String get approve;

  String get requestApproval;

  String get cashFlow;

  String get currentCashBalance;

  String get income;

  String get cancelExpense;

  String get forecastedExpenses;

  String get payroll;

  String get expensesByCategory;

  String get forecastedRevenues;

  String get draftExpenses;

  String get pendingApproval;

  String get draftInvoices;

  String get forecastedProjectRevenues;

  // NEW
  String get inventory;

  String get vehicle;

  String get newVehicle;

  String get model;

  String get brand;

  String get quantity;

  String get price;

  String get product;

  String get newProduct;

  String get newBrand;

  String get year;

  String get fromYear;

  String get toYear;

  String get enterYourSearch;

  String get otherStores;

  String get order;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'en',
        'es',
        'pt',
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
