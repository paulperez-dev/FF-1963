import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'fr'];

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
    String? esText = '',
    String? frText = '',
  }) =>
      [enText, esText, frText][languageIndex] ?? '';

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
  // HomePage1
  {
    '57r5z5wl': {
      'en': 'Layout1',
      'es': 'Disposición1',
      'fr': 'Disposition 1',
    },
    'tjyme3rt': {
      'en': 'Layout2',
      'es': 'Disposición 2',
      'fr': 'Disposition 2',
    },
    '55fwarcj': {
      'en': 'Layout3',
      'es': 'Disposición3',
      'fr': 'Disposition 3',
    },
    'kheg4w9b': {
      'en': 'Layout4',
      'es': 'Disposición 4',
      'fr': 'Disposition4',
    },
    '51pdti3n': {
      'en': 'Base1',
      'es': 'Base1',
      'fr': 'Base1',
    },
    'cq45d6jo': {
      'en': 'Base2',
      'es': 'Base2',
      'fr': 'Base2',
    },
    'rm8i4r1d': {
      'en': 'Base3',
      'es': 'Base3',
      'fr': 'Base3',
    },
    'clg6dlk0': {
      'en': 'Base4',
      'es': 'Base4',
      'fr': 'Base4',
    },
    '88pyne5w': {
      'en': 'Base5 ',
      'es': 'Base5',
      'fr': 'Base5',
    },
    'jp73xo78': {
      'en': 'Check our Website',
      'es': 'Visita nuestro sitio web',
      'fr': 'Consultez notre site Web',
    },
    'fncnbw52': {
      'en': 'Check for updates',
      'es': 'Buscar actualizaciones',
      'fr': 'Rechercher des mises à jour',
    },
    'wryh88mo': {
      'en': 'Select Widget group',
      'es': 'Seleccionar grupo de widgets',
      'fr': 'Sélectionner le groupe de widgets',
    },
    'linxf8as': {
      'en': 'Logout',
      'es': 'Cerrar sesión',
      'fr': 'Se déconnecter',
    },
    'hm3nj79n': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Auth1
  {
    '3rln45ok': {
      'en': 'Widget Test app',
      'es': 'Aplicación de prueba de widgets',
      'fr': 'Application de test de widget',
    },
    'vghlr54z': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'fr': 'Se connecter',
    },
    '6zrbp5os': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': 'Comencemos llenando el formulario a continuación.',
      'fr': 'Commençons par remplir le formulaire ci-dessous.',
    },
    'jw3mxh67': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    'xjp51kd5': {
      'en': 'Password',
      'es': 'Contraseña',
      'fr': 'Mot de passe',
    },
    'ytyzy9e8': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'fr': 'Se connecter',
    },
    '0ci9aq5k': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'fr': 'S\'inscrire',
    },
    '83eifl73': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': 'Comencemos llenando el formulario a continuación.',
      'fr': 'Commençons par remplir le formulaire ci-dessous.',
    },
    'mferlqvy': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    'bafcwwe8': {
      'en': 'Password',
      'es': 'Contraseña',
      'fr': 'Mot de passe',
    },
    'fbfpsf1k': {
      'en': 'Confirm Password',
      'es': 'confirmar Contraseña',
      'fr': 'Confirmez le mot de passe',
    },
    '5zfqx12z': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'fr': 'Créer un compte',
    },
    '9qeksg6b': {
      'en': 'Or sign up with',
      'es': 'O regístrate con',
      'fr': 'Ou inscrivez-vous avec',
    },
    'cjcqw52e': {
      'en': 'Continue with Google',
      'es': 'Continuar con Google',
      'fr': 'Continuer avec Google',
    },
    '0s596lpj': {
      'en': 'Continue with Apple',
      'es': 'Continuar con Apple',
      'fr': 'Continuer avec Apple',
    },
    'xbctr0qs': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Layout
  {
    'h2p2gc21': {
      'en': 'Layout',
      'es': 'Disposición',
      'fr': 'Mise en page',
    },
    '6po7ovs3': {
      'en': 'This is a container with an image',
      'es': 'Este es un contenedor con una imagen.',
      'fr': 'Ceci est un conteneur avec une image',
    },
    'imcccbk1': {
      'en': 'This is another container with an image',
      'es': 'Este es otro contenedor con una imagen.',
      'fr': 'Ceci est un autre conteneur avec une image',
    },
    '2cxyghdy': {
      'en': 'Front',
      'es': 'Frente',
      'fr': 'Devant',
    },
    '29c63n6n': {
      'en': 'Back',
      'es': 'Atrás',
      'fr': 'Dos',
    },
    'brcnikud': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Layout2
  {
    '7p88sorv': {
      'en': 'Dario Rocha',
      'es': 'Darío Rocha',
      'fr': 'Dario Rocha',
    },
    'nfuft148': {
      'en': 'Dario\'s journeys',
      'es': 'Los viajes de Darío',
      'fr': 'Les voyages de Dario',
    },
    '1u79iwlh': {
      'en': 'Diego Torres',
      'es': 'Diego Torres',
      'fr': 'Diego Torres',
    },
    'b6r4pxcn': {
      'en': 'Diego\'s journeys',
      'es': 'Los viajes de Diego',
      'fr': 'Les voyages de Diego',
    },
    'en8pdnj9': {
      'en': 'User Name',
      'es': 'Nombre de usuario',
      'fr': 'Nom d\'utilisateur',
    },
    '61w2ihkm': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    'l1cpl4pf': {
      'en': 'Submit',
      'es': 'Entregar',
      'fr': 'Soumettre',
    },
    'b1sg1b13': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'fr': 'Champ requis',
    },
    'obzav7hs': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'xen7ej5l': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'fr': 'Champ requis',
    },
    '3qvanrde': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '9473i1ko': {
      'en': 'Layout2',
      'es': 'Disposición 2',
      'fr': 'Disposition 2',
    },
    'zkpr47my': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Layout3
  {
    'zj92go7z': {
      'en': 'PageView',
      'es': 'Vista de pagina',
      'fr': 'Page vue',
    },
    'xe0bfgx1': {
      'en': 'Best trips',
      'es': 'Los mejores viajes',
      'fr': 'Les meilleurs voyages',
    },
    'm63rl2a5': {
      'en': 'Carousel',
      'es': 'Carrusel',
      'fr': 'Carrousel',
    },
    'hhogqt08': {
      'en': 'Images from my trips',
      'es': 'Imágenes de mis viajes',
      'fr': 'Images de mes voyages',
    },
    'caerivkf': {
      'en': 'This is the best picture from my trip\n',
      'es': 'Esta es la mejor foto de mi viaje.',
      'fr': 'C\'est la meilleure photo de mon voyage',
    },
    'fak7s9hm': {
      'en': 'Staggered',
      'es': 'Escalonado',
      'fr': 'Décalé',
    },
    'i7o0oo72': {
      'en': 'Trip ',
      'es': 'Viaje',
      'fr': 'Voyage',
    },
    'b2l24q8t': {
      'en': 'Dario\'s Images',
      'es': 'Imágenes de Dario',
      'fr': 'Les images de Dario',
    },
    '70yxkiwb': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Base
  {
    '2u5fy3z6': {
      'en': 'FlutterFlow',
      'es': 'FlutterFlow',
      'fr': 'FlutterFlow',
    },
    '51lmesis': {
      'en': ' - Build Different',
      'es': '- Construye diferente',
      'fr': '- Construire différemment',
    },
    'n7407e3u': {
      'en': 'This is a modified text',
      'es': 'Este es un texto modificado',
      'fr': 'Ceci est un texte modifié',
    },
    'fzzqd2y1': {
      'en': 'This is a circle image',
      'es': 'Esta es una imagen circular',
      'fr': 'Ceci est une image circulaire',
    },
    'fraqu7x0': {
      'en': 'Share',
      'es': 'Compartir',
      'fr': 'Partager',
    },
    'aaatnnmv': {
      'en': 'Share',
      'es': 'Compartir',
      'fr': 'Partager',
    },
    '0oa5elal': {
      'en': 'Check this videos',
      'es': 'Mira estos videos',
      'fr': 'Regardez ces vidéos',
    },
    'yzq0wf5b': {
      'en': 'Share',
      'es': 'Compartir',
      'fr': 'Partager',
    },
    '514uvq12': {
      'en': 'Share',
      'es': 'Compartir',
      'fr': 'Partager',
    },
    'a38buuzk': {
      'en': 'Check this maps',
      'es': 'Consulta estos mapas',
      'fr': 'Consultez ces cartes',
    },
    '5tknizdn': {
      'en': 'Share',
      'es': 'Compartir',
      'fr': 'Partager',
    },
    'd95mo6kx': {
      'en': 'Share',
      'es': 'Compartir',
      'fr': 'Partager',
    },
    'ye5jun7l': {
      'en': 'Check this places',
      'es': 'Revisa estos lugares',
      'fr': 'Vérifiez ces endroits',
    },
    'a9n422gb': {
      'en': 'Base Elements',
      'es': 'Elementos base',
      'fr': 'Éléments de base',
    },
    'srqy9dkz': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Base2
  {
    'u89ifb7f': {
      'en': 'Base Elements 2',
      'es': 'Elementos básicos 2',
      'fr': 'Éléments de base 2',
    },
    'tl06po0t': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Base3
  {
    'z8kgf861': {
      'en': 'Base Elements 3',
      'es': 'Elementos básicos 3',
      'fr': 'Éléments de base 3',
    },
    '51i3ylvn': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Page
  {
    'a8nmd3wc': {
      'en': 'Page Title',
      'es': 'Título de la página',
      'fr': 'Titre de la page',
    },
    '2txduzuq': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Form
  {
    'k8xca3i4': {
      'en': 'Page Title',
      'es': 'Título de la página',
      'fr': 'Titre de la page',
    },
    '0d6fxnky': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Layout4
  {
    'x7ajkwqg': {
      'en': 'Diego\'s images',
      'es': 'Imágenes de Diego',
      'fr': 'Les images de Diego',
    },
    'vd1eod6v': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Base4
  {
    'quaghanr': {
      'en': 'Map from my trip',
      'es': 'Mapa de mi viaje',
      'fr': 'Carte de mon voyage',
    },
    'zvpmh7or': {
      'en': 'Chech this audio aobut Machu Pichu',
      'es': 'Mira este audio sobre Machu Pichu',
      'fr': 'Découvrez cet audio sur le Machu Pichu',
    },
    'o2aizk10': {
      'en': 'Base Element 4',
      'es': 'Elemento base 4',
      'fr': 'Élément de base 4',
    },
    'kdkrgeyr': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'hd3ak3yz': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Base5
  {
    'v5diofws': {
      'en': '60%',
      'es': '60%',
      'fr': '60%',
    },
    '8o2e4z2m': {
      'en': 'Screen 1',
      'es': 'Pantalla 1',
      'fr': 'Écran 1',
    },
    'roxqp0ds': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'fr': 'Veuillez sélectionner...',
    },
    'ns084u2b': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'fr': 'Rechercher un article...',
    },
    'qu3lunp0': {
      'en': 'Base Elementes 5',
      'es': 'Elementos básicos 5',
      'fr': 'Éléments de base 5',
    },
    'gqvd186t': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'em3a49v5': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // ListFirebase
  {
    'awhybdzy': {
      'en': 'Food',
      'es': 'Alimento',
      'fr': 'Nourriture',
    },
    'levkw12s': {
      'en': 'Create Product',
      'es': 'Crear producto',
      'fr': 'Créer un produit',
    },
    'r977stuy': {
      'en': 'Categories',
      'es': 'Categorías',
      'fr': 'Catégories',
    },
    'tcq0o1ob': {
      'en': 'Drinks',
      'es': 'Bebidas',
      'fr': 'Boissons',
    },
    '1lisy595': {
      'en': 'Create Product',
      'es': 'Crear producto',
      'fr': 'Créer un produit',
    },
    '0qql4q82': {
      'en': 'Categories',
      'es': 'Categorías',
      'fr': 'Catégories',
    },
    'd5gl996s': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
    'nl2cndwa': {
      'en': 'Create Product',
      'es': 'Crear producto',
      'fr': 'Créer un produit',
    },
    'jdvncm90': {
      'en': 'Categories',
      'es': 'Categorías',
      'fr': 'Catégories',
    },
    'cllrscfn': {
      'en': 'ListView Test',
      'es': 'Prueba de vista de lista',
      'fr': 'Test de liste',
    },
    '3pvx6wko': {
      'en': 'Shop',
      'es': 'Comercio',
      'fr': 'Boutique',
    },
  },
  // Dashboard
  {
    'gi2uuvm7': {
      'en': 'Progress In Tests',
      'es': 'Progreso en las pruebas',
      'fr': 'Progrès dans les tests',
    },
    '1yhmk91k': {
      'en': 'Test Chart Results',
      'es': 'Resultados del gráfico de pruebas',
      'fr': 'Résultats du tableau de test',
    },
    '3wr97fnu': {
      'en': 'Test DataType Pie Chart',
      'es': 'Gráfico circular de tipo de datos de prueba',
      'fr': 'Test du type de données Graphique à secteurs',
    },
    'dwdjymk3': {
      'en': 'Test DataType Chart',
      'es': 'Gráfico de tipos de datos de prueba',
      'fr': 'Tableau des types de données de test',
    },
    'dyqe55et': {
      'en': 'Dashboard',
      'es': 'Panel',
      'fr': 'Tableau de bord',
    },
    'gf0zl0aj': {
      'en': '__',
      'es': '__',
      'fr': '__',
    },
  },
  // DataTableFirebase
  {
    'csscon4v': {
      'en': 'Create Product',
      'es': 'Crear producto',
      'fr': 'Créer un produit',
    },
    'j3x6htc5': {
      'en': 'Activate Switch',
      'es': 'Activar interruptor',
      'fr': 'Activer le commutateur',
    },
    'l0kdfb6i': {
      'en': 'In order to show price',
      'es': 'Para mostrar el precio',
      'fr': 'Afin d\'afficher le prix',
    },
    'eb9fzz21': {
      'en': 'Name',
      'es': 'Nombre',
      'fr': 'Nom',
    },
    '357tn89m': {
      'en': 'Quantity',
      'es': 'Cantidad',
      'fr': 'Quantité',
    },
    '17m3kggc': {
      'en': 'Price',
      'es': 'Precio',
      'fr': 'Prix',
    },
    'b8sqeuw4': {
      'en': 'DataTable Test',
      'es': 'Prueba de tabla de datos',
      'fr': 'Test de table de données',
    },
    '61yo7z9w': {
      'en': 'Shop',
      'es': 'Comercio',
      'fr': 'Boutique',
    },
  },
  // PageviewFirebase
  {
    '1iitcgss': {
      'en': 'Manage the Opacity',
      'es': 'Gestionar la opacidad',
      'fr': 'Gérer l\'opacité',
    },
    's0qbijd7': {
      'en': 'PageView + FlipCard Test',
      'es': 'Prueba de PageView + FlipCard',
      'fr': 'Test de PageView + FlipCard',
    },
    'wzn1e5h7': {
      'en': 'Shop',
      'es': 'Comercio',
      'fr': 'Boutique',
    },
  },
  // Permission_Page
  {
    'yyzyyint': {
      'en': 'Camera',
      'es': '',
      'fr': '',
    },
    'nsn7j1og': {
      'en': 'Bluetooth',
      'es': '',
      'fr': '',
    },
    '8rb5rpto': {
      'en': 'Permission Devices',
      'es': '',
      'fr': '',
    },
    'ouhri4uo': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // ModalExample
  {
    '0qvgrt3y': {
      'en': 'Log Out',
      'es': 'Cerrar sesión',
      'fr': 'Se déconnecter',
    },
    'ysx2d8sc': {
      'en': 'Log Out',
      'es': 'Cerrar sesión',
      'fr': 'Se déconnecter',
    },
    'jci4jed1': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'fr': 'Annuler',
    },
  },
  // Drawer
  {
    'm33kxfmx': {
      'en': 'Menu',
      'es': 'Menú',
      'fr': 'Menu',
    },
    'xcghjqk7': {
      'en': 'General',
      'es': 'General',
      'fr': 'Général',
    },
    '444ug5jk': {
      'en': 'Firebase Queries',
      'es': 'Consultas de Firebase',
      'fr': 'Requêtes Firebase',
    },
    '85hh2c5q': {
      'en': 'Light Mode',
      'es': 'Modo claro',
      'fr': 'Mode lumière',
    },
    '31gvypgs': {
      'en': 'Dark Mode',
      'es': 'Modo oscuro',
      'fr': 'Mode sombre',
    },
    'rgsd0c7s': {
      'en': 'Log Out',
      'es': 'Cerrar sesión',
      'fr': 'Se déconnecter',
    },
  },
  // FirebaseDocItemInfo
  {
    '3bjb4qat': {
      'en': 'Change Photo',
      'es': 'Cambiar foto',
      'fr': 'Changer la photo',
    },
    '9325wj58': {
      'en': 'Your Name',
      'es': 'Su nombre',
      'fr': 'votre nom',
    },
    'ivnq9nwx': {
      'en': 'Your Name',
      'es': 'Su nombre',
      'fr': 'votre nom',
    },
    'wqe2o5pn': {
      'en': 'Admin',
      'es': 'Administración',
      'fr': 'Administrateur',
    },
    'o384xb2q': {
      'en': 'Manager',
      'es': 'Gerente',
      'fr': 'Directeur',
    },
    'hg4qf2re': {
      'en': 'Editor',
      'es': 'Editor',
      'fr': 'Éditeur',
    },
    '02tign22': {
      'en': 'Viewer',
      'es': 'Espectador',
      'fr': 'Téléspectateur',
    },
    '4irzggop': {
      'en': 'Select Category',
      'es': 'selecciona una categoría',
      'fr': 'Choisir une catégorie',
    },
    '6gx2x76p': {
      'en': 'Search for category',
      'es': 'Buscar por categoría',
      'fr': 'Rechercher une catégorie',
    },
    'gea7unfx': {
      'en': 'Price',
      'es': 'Precio',
      'fr': 'Prix',
    },
    'c937pcu2': {
      'en': 'Created On:',
      'es': 'Creado en:',
      'fr': 'Créé sur:',
    },
    '6i24c66m': {
      'en': 'Last Update',
      'es': 'Última actualización',
      'fr': 'Dernière mise à jour',
    },
    'f0vv4pli': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'fr': 'Champ requis',
    },
    'jq8c79kd': {
      'en': 'Minimum 5 characters',
      'es': 'Mínimo 5 caracteres',
      'fr': 'Minimum 5 caractères',
    },
    'ncby1nl3': {
      'en': 'Maximum 15 characters',
      'es': 'Máximo 15 caracteres',
      'fr': 'Maximum 15 caractères',
    },
    'xlpm02ug': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '7yxdq2ga': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'fr': 'Champ requis',
    },
    'dzm5rw0a': {
      'en': 'Minimum 5 characters',
      'es': 'Mínimo 5 caracteres',
      'fr': 'Minimum 5 caractères',
    },
    'onoaiaa3': {
      'en': 'Maximum 60 characters',
      'es': 'Máximo 60 caracteres',
      'fr': 'Maximum 60 caractères',
    },
    'p00jvt0k': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, seleccione una opción del menú desplegable',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '5zrcriog': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'fr': 'Annuler',
    },
    'hn3lv0x3': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'fr': 'Sauvegarder les modifications',
    },
  },
  // FirebaseItemInListView
  {
    '6a3oe9ml': {
      'en': 'Name: ',
      'es': 'Nombre:',
      'fr': 'Nom:',
    },
    '0k1280r1': {
      'en': 'Price: ',
      'es': 'Precio:',
      'fr': 'Prix:',
    },
    'ymssdc1j': {
      'en': 'Quantity: ',
      'es': 'Cantidad:',
      'fr': 'Quantité:',
    },
    'q6gtoo6r': {
      'en': 'Edit Product',
      'es': 'Editar producto',
      'fr': 'Modifier le produit',
    },
    'pof9t9c8': {
      'en': 'Delete product',
      'es': 'Eliminar producto',
      'fr': 'Supprimer le produit',
    },
  },
  // AskPin
  {
    'j5q5f9m1': {
      'en': 'Enter your PIN below',
      'es': 'Introduzca su PIN a continuación',
      'fr': 'Entrez votre code PIN ci-dessous',
    },
    '478d0t0z': {
      'en': 'PIN is 123456',
      'es': 'El PIN es 123456',
      'fr': 'Le code PIN est 123456',
    },
  },
  // Miscellaneous
  {
    '5f04c4ld': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'eme5oujm': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'op52io95': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'ipdckdw1': {
      'en': 'The app must use this permission ',
      'es': 'La aplicación debe utilizar este permiso',
      'fr': 'L\'application doit utiliser cette autorisation',
    },
    '41l994qx': {
      'en': 'The app must use this permission ',
      'es': 'La aplicación debe utilizar este permiso',
      'fr': 'L\'application doit utiliser cette autorisation',
    },
    '033a2kt9': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'aw4hxvza': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'n0xrxekg': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '80gnew1p': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'e207i0n8': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'm0x1wq47': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'c4a7woau': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'txnohrmy': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'lepjb5of': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'q58plxhi': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '9k0kgiy0': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'fpwpbr77': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '6bwydffj': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'g9roovf1': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '5lkpya7y': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '9sn4dhvo': {
      'en': '',
      'es': '',
      'fr': '',
    },
    't1s0paki': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'wfwyvqi7': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '9zbl0sk7': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'm5r79ev6': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'l0h1v21w': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'fv829vbk': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'k2sli7su': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'hcukp2qc': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'lw6n46xm': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'v32psgeo': {
      'en': 'Verificate yourself',
      'es': 'Verifícate tú mismo',
      'fr': 'Vérifiez-vous',
    },
  },
].reduce((a, b) => a..addAll(b));
