# encoding: utf-8

de = Country.find_by_key!( 'de' )
at = Country.find_by_key!( 'at' )
es = Country.find_by_key!( 'es' )
fr = Country.find_by_key!( 'fr' )
en = Country.find_by_key!( 'en' )
pl = Country.find_by_key!( 'pl' )
gr = Country.find_by_key!( 'gr' )
ru = Country.find_by_key!( 'ru' )
cz = Country.find_by_key!( 'cz' )
nl = Country.find_by_key!( 'nl' )
dk = Country.find_by_key!( 'dk' )
pt = Country.find_by_key!( 'pt' )
it = Country.find_by_key!( 'it' )
hr = Country.find_by_key!( 'hr' )
ua = Country.find_by_key!( 'ua' )
be = Country.find_by_key!( 'be' )
by = Country.find_by_key!( 'by' )
sc = Country.find_by_key!( 'sc' )
ro = Country.find_by_key!( 'ro' )
tr = Country.find_by_key!( 'tr' )
ch = Country.find_by_key!( 'ch' )
mt = Country.find_by_key!( 'mt' )


  ## use en/teams.rb
  ### [ 'chelsea',      'FC Chelsea',           en ],
  ### [ 'manunited',   'Manchester United',     en ],
  ### [ 'arsenal',      'FC Arsenal',           en ],
  ### [ 'mancity',      'Manchester City',      en ],

  ## use de/teams.rb
  ## [ 'bayern',    'Bayern München',          de ],
  ## [ 'schalke',      'FC Schalke 04',        de ],
  ## [ 'dortmund',     'Borussia Dortmund',    de ],


teams = [
  [ 'porto',        'FC Porto|FC Porto POR',             pt ],
  [ 'kiew',         'Dynamo Kiew|FC Dynamo Kiew UKR',          ua ],
  [ 'paris',        'Paris St. Germain|Paris S.Germai FRA',    fr ],
  [ 'zagreb',       'Dinamo Zagreb|Dinamo Zagreb CRO',        hr ],

  [ 'olympiacos',   'Olympiakos Piräus|Olympiakos P. GRE',    gr ],
  [ 'montpellier',  'HSC Montpellier|Montpellier FRA',      fr ],

  [ 'milan',        'AC Mailand|AC Milan ITA',           it ],
  [ 'zenit',        'Zenit St. Petersburg|Zenit Petersb. RUS', ru ],
  [ 'anderlecht',   'RSC Anderlecht|RSC Anderlecht BEL',       be ],
  [ 'malaga',       'FC Málaga|Malaga CF ESP',            es ],

  [ 'madrid',       'Real Madrid|Real Madrid ESP',          es ],
  [ 'ajax',         'Ajax Amsterdam|Ajax Amsterdam NED',       nl ],

  [ 'donezk',       'Schachtjor Donezk|Shakhtar Don. UKR',    ua ],
  [ 'juventus',     'Juventus Turin|Juventus Turin ITA',       it ],
  [ 'nordsjalland', 'FC Nordsjælland|Nordsjaelland DEN',      dk ],

  [ 'valencia',  'FC Valencia|FC Valencia ESP',             es ],
  [ 'lille',     'OSC Lille|Lille OSC FRA',               fr ],
  [ 'borissow',  'BATE Borissow|Bate Borisov BLR',           by ],

  [ 'barcelona', 'FC Barcelona|FC Barcelona ESP',            es ],
  [ 'benfica',   'Benfica Lissabon|Benfica Lis. POR',      pt ],
  [ 'spartak',   'Spartak Moskau|Spartak Moskau RUS',     ru ],
  [ 'celtic',    'Celtic Glasgow|Celtic Glasgow SCO',          sc ],

  [ 'braga',       'Sporting Braga|Sporting Braga POR',        pt ],
  [ 'galatasaray', 'Galatasaray|Galatasaray TUR',           tr ],
  [ 'cluj',        'CFR Cluj|CFR Cluj ROU',              ro ],

###################
# more teams from cl/el 2011-12
#
  [ 'inter',     'FC Internazionale Milano', it ],
  [ 'marseille', 'Olympique Marseille',      fr ],
  [ 'basel',     'FC Basel 1893',            ch ],
  [ 'napoli',    'SSC Napoli',               it ],
  [ 'moskva',    'PFC CSKA Moskva',          ru ],
  [ 'apoel',     'APOEL Nikosia',            mt ],

  [ 'az',        'AZ Alkmaar',               nl ],
  [ 'athletic',  'Athletic Bilbao',          es ],
  [ 'sporting',  'Sporting Lisboa',          pt ],
  [ 'metalist',  'FC Metalist Kharkiv',      ua ],
  [ 'atletico',  'Atlético Madrid',          es ],
  [ 'hannover',  'Hannover 96',              de ]
]


Team.create_from_ary!( teams, club: true )


Prop.create!( key: 'db.cl.teams.version', value: '1' )
Prop.create!( key: 'db.el.teams.version', value: '1' )