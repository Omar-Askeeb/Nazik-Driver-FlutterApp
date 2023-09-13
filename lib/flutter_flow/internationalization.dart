import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login
  {
    'fac0vx9x': {
      'en': 'NAZIK',
      'ar': 'نازك',
    },
    '6xr2gqqm': {
      'en': 'Sign in',
      'ar': 'تسجيل الدخول',
    },
    'g74grkju': {
      'en': 'Fill The followin fields',
      'ar': 'املئ الحقول التالية',
    },
    'j2ev3y0c': {
      'en': 'Email',
      'ar': 'البريد الالكتروني',
    },
    'rez08b58': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '74tsnpea': {
      'en': 'Sign in',
      'ar': 'تسجيل الدخول',
    },
    'hqwhiw73': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // UserProfile
  {
    'ibr232e6': {
      'en': 'Your Profile',
      'ar': 'ملفك الشخصي',
    },
  },
  // UserList
  {
    'ldzat03f': {
      'en': 'Log out',
      'ar': '',
    },
    'v3s4immu': {
      'en': 'Users',
      'ar': 'المستخدمين',
    },
    'q8hm3axi': {
      'en': 'Drivers',
      'ar': 'السائقين',
    },
    'ubwqj5fz': {
      'en': 'search',
      'ar': 'بحث عن طرد',
    },
    'ixa8xt01': {
      'en': 'Users',
      'ar': 'المستخدمين',
    },
    'jxpanarb': {
      'en': 'Add User',
      'ar': 'اضافة مستخدم',
    },
    '12l6x64p': {
      'en': 'Active',
      'ar': 'الحالة',
    },
    'o6gfo860': {
      'en': 'Delete',
      'ar': 'حذف',
    },
    '5cwea747': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // UserAddNew
  {
    'rg6furhu': {
      'en': 'Log out',
      'ar': '',
    },
    'ekg5svdh': {
      'en': 'Users',
      'ar': 'المستخدمين',
    },
    'vw7k2dgl': {
      'en': 'Drivers',
      'ar': 'السائقين',
    },
    'bpbb4md1': {
      'en': 'search',
      'ar': 'بحث عن طرد',
    },
    'yy8l398x': {
      'en': 'Email',
      'ar': 'البريد الالكتروني',
    },
    'blfpvbc1': {
      'en': 'User Name',
      'ar': 'اسم المستخدم',
    },
    'uyx7qpd6': {
      'en': 'Phone',
      'ar': 'الهاتف',
    },
    '8ee5qi7r': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'sqye3dcl': {
      'en': 'Confirm Password',
      'ar': 'تأكيد كلمة المرور',
    },
    '8xwob59e': {
      'en': 'Save Changes',
      'ar': 'حفظ',
    },
    'vb40y9t2': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // updatePackage
  {
    'tdgvugta': {
      'en': 'Reciever Data',
      'ar': 'بيانات المستلم',
    },
    'jok94u1u': {
      'en': 'Sender Data',
      'ar': 'بيانات المرسل',
    },
    'qvg39fya': {
      'en': 'Package Data',
      'ar': 'بيانات الطرد',
    },
    '3jhlxg41': {
      'en': 'Tripoli',
      'ar': 'طرابلس',
    },
    'adz8w2d3': {
      'en': 'Benghazi',
      'ar': 'بنغازي',
    },
    'mhmdee6w': {
      'en': 'Sabha',
      'ar': 'سبها',
    },
    'exftjknu': {
      'en': 'Tranmitter Office',
      'ar': 'المكتب المرسل',
    },
    'j40pv1sb': {
      'en': 'Select an Office...',
      'ar': 'اختيار مكتب',
    },
    'c10l0gz1': {
      'en': 'Tripoli',
      'ar': 'طرابلس',
    },
    'wflh0l1y': {
      'en': 'Benghazi',
      'ar': 'بنغازي',
    },
    '6mrfydeq': {
      'en': 'Sabha',
      'ar': 'سبها',
    },
    'mwtmvlbp': {
      'en': 'Reciever Office',
      'ar': 'المكتب المستلم',
    },
    'v80mmtu9': {
      'en': 'Select an Office...',
      'ar': 'اختيار مكتب',
    },
    'pm0bk2jy': {
      'en': 'Clothes',
      'ar': 'ملابس',
    },
    'hyxwp2uw': {
      'en': 'Shoes',
      'ar': 'أحذية',
    },
    't3cpbcrg': {
      'en': 'Home accessories',
      'ar': 'منزلية',
    },
    'wxi30krf': {
      'en': 'Electronics',
      'ar': 'أجهزة إلكترونية',
    },
    '43gdp5pk': {
      'en': 'Documents',
      'ar': 'مستندات',
    },
    'yv9svkeq': {
      'en': 'Food',
      'ar': 'تغذية',
    },
    '46af7m5x': {
      'en': 'Other',
      'ar': 'أخرى',
    },
    'dz86zixe': {
      'en': 'Package Type',
      'ar': 'نوع الطرد',
    },
    '6oy7kf22': {
      'en': 'Select Type...',
      'ar': 'نوع الطرد',
    },
    'q3fxe4vy': {
      'en': 'Breakable',
      'ar': 'قابلة للكسر',
    },
    's2vtmsvj': {
      'en': 'Unbreakable',
      'ar': 'غير قابلة للكسر',
    },
    'g99o3z99': {
      'en': 'Breakable',
      'ar': 'قابلة للكسر',
    },
    'c99t31jq': {
      'en': 'Select Type...',
      'ar': 'نوع الطرد',
    },
    'r4mfmutn': {
      'en': 'Send Date',
      'ar': 'تاريخ الارسال',
    },
    'absouv9z': {
      'en': 'In Progress',
      'ar': 'قيد التوصيل',
    },
    'fib1x4ep': {
      'en': 'Delivered',
      'ar': 'تم التوصيل',
    },
    'w607tjc4': {
      'en': 'Canceled',
      'ar': 'ملغاة',
    },
    '39klhwaa': {
      'en': 'In Hold',
      'ar': 'فالمخزن',
    },
    'hp6gdt71': {
      'en': 'wrong phone',
      'ar': 'رقم هاتف خاطئ',
    },
    'dyx2yowd': {
      'en': 'wrong package',
      'ar': 'خطأ بالمنتج',
    },
    '7sb8z0ov': {
      'en': 'wrong destination',
      'ar': 'خطأ بعنوان المستلم',
    },
    '49uts4iu': {
      'en': 'phone is off',
      'ar': 'الهاتف مقفل',
    },
    'c7gko6ju': {
      'en': 'no respond',
      'ar': 'لم يتم الرد',
    },
    'g8djr48k': {
      'en': 'out of service',
      'ar': 'خارج التغطية',
    },
    'iln9ehlj': {
      'en': 'redirect calls',
      'ar': 'تحويل المكالمات',
    },
    '64i5wq5z': {
      'en': 'reciever is absent ',
      'ar': 'عدم تواجد المستلم',
    },
    '5733ovyc': {
      'en': 'refuse to recieve',
      'ar': 'رفض الاستلام',
    },
    'jdir8hg8': {
      'en': 'already delivered',
      'ar': 'تم التسليم مسبقا',
    },
    'ylcotqow': {
      'en': 'delayed',
      'ar': 'تأجيل الطلب',
    },
    '2sh5r6r7': {
      'en': 'with driver',
      'ar': 'استلمها السائق',
    },
    'i67n27ry': {
      'en': 'Package State...',
      'ar': 'حالة الطرد...',
    },
    'cajo6i7v': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'r9hkedew': {
      'en': 'Driver...',
      'ar': 'السائق...',
    },
    'xokcw68h': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'po0jeiz9': {
      'en': 'Rev',
      'ar': 'الراجع',
    },
    'xh0334p9': {
      'en': 'Notes',
      'ar': 'ملاحظات',
    },
    'p42iidby': {
      'en': 'PackageID',
      'ar': '',
    },
    'wrk34hai': {
      'en': 'Print Data',
      'ar': 'طباعة فاتورة',
    },
    '43v4rjs2': {
      'en': 'Save',
      'ar': 'حفظ',
    },
    'jzjvjo67': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // PackageListSearch
  {
    '1pl3dt7t': {
      'en': 'Log out',
      'ar': '',
    },
    'nk6wctnk': {
      'en': 'search',
      'ar': 'بحث عن طرد',
    },
    'l8ou3vfu': {
      'en': 'Drivers',
      'ar': 'السائقين',
    },
    'w1t1s0oe': {
      'en': '',
      'ar': '',
    },
    'tiaryf34': {
      'en': 'search',
      'ar': 'بحث',
    },
    'rwxmqp7x': {
      'en': 'Cancel',
      'ar': 'الغاء',
    },
    'ibu29ucz': {
      'en': 'Refernce',
      'ar': 'رقم الطرد',
    },
    '9prmoq42': {
      'en': 'State',
      'ar': 'الحالة',
    },
    'uc85ed3a': {
      'en': 'Send Date',
      'ar': 'تاريخ الارسال',
    },
    '4s2uzhu3': {
      'en': 'Deliver Date',
      'ar': 'تاريخ التسليم',
    },
    'ged2j1ht': {
      'en': 'Send Date',
      'ar': 'تاريخ الارسال',
    },
    'kc0rh72n': {
      'en': 'Driver',
      'ar': 'رقم السائق',
    },
    'xk7qv915': {
      'en': 'Log out',
      'ar': '',
    },
    '4okyfa3p': {
      'en': 'search',
      'ar': 'بحث عن طرد',
    },
    'm0afamqe': {
      'en': 'Package Search',
      'ar': 'بحث عن طرد',
    },
    '4a7a84jz': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // Miscellaneous
  {
    '2qu6a2f0': {
      'en': '',
      'ar': '',
    },
    'nid9bd3c': {
      'en': '',
      'ar': '',
    },
    'rw41lpwq': {
      'en': '',
      'ar': '',
    },
    '2uevd8xb': {
      'en': '',
      'ar': '',
    },
    '3nxne0b3': {
      'en': '',
      'ar': '',
    },
    '5ogop8uv': {
      'en': '',
      'ar': '',
    },
    'gi4rr1eq': {
      'en': '',
      'ar': '',
    },
    '9lbpveng': {
      'en': '',
      'ar': '',
    },
    'eczxq70x': {
      'en': '',
      'ar': '',
    },
    '4b1zw1st': {
      'en': '',
      'ar': '',
    },
    'qkp65h6v': {
      'en': '',
      'ar': '',
    },
    '4ujiiltb': {
      'en': '',
      'ar': '',
    },
    '9gli4b0z': {
      'en': '',
      'ar': '',
    },
    'kp30fm5t': {
      'en': '',
      'ar': '',
    },
    'avzznjdd': {
      'en': '',
      'ar': '',
    },
    'rwidosmq': {
      'en': '',
      'ar': '',
    },
    'h6lty0ne': {
      'en': '',
      'ar': '',
    },
    'zklpda5j': {
      'en': '',
      'ar': '',
    },
    'k6dqjxhm': {
      'en': '',
      'ar': '',
    },
    '0h0u6osw': {
      'en': '',
      'ar': '',
    },
    '7k4dfwzv': {
      'en': '',
      'ar': '',
    },
    '984ei9w8': {
      'en': '',
      'ar': '',
    },
    'q71jyrx2': {
      'en': '',
      'ar': '',
    },
    'o3x46xbm': {
      'en': '',
      'ar': '',
    },
    'zec9u3l2': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
