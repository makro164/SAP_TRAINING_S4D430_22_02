interface ZIF_I_00_CONNECTIONTP_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF ZI_00_CONNECTIONTP,
 CREATE_ZI_00_CONNECTIONTP      TYPE /BOBF/ACT_KEY VALUE '005056044E851EECA5AF2997D68767E1',
 DELETE_ZI_00_CONNECTIONTP      TYPE /BOBF/ACT_KEY VALUE '005056044E851EECA5AF2997D687E7E1',
 LOCK_ZI_00_CONNECTIONTP        TYPE /BOBF/ACT_KEY VALUE '005056044E851EECA5AF2997D686A7E1',
 SAVE_ZI_00_CONNECTIONTP        TYPE /BOBF/ACT_KEY VALUE '005056044E851EECA5AF2997D68867E1',
 SWITCH_FLIGHTTYPE              TYPE /BOBF/ACT_KEY VALUE '005056044E851EDCA5C4958E46E52164',
 UNLOCK_ZI_00_CONNECTIONTP      TYPE /BOBF/ACT_KEY VALUE '005056044E851EECA5AF2997D686E7E1',
 UPDATE_ZI_00_CONNECTIONTP      TYPE /BOBF/ACT_KEY VALUE '005056044E851EECA5AF2997D687A7E1',
 VALIDATE_ZI_00_CONNECTIONTP    TYPE /BOBF/ACT_KEY VALUE '005056044E851EECA5AF2997D68827E1',
      END OF ZI_00_CONNECTIONTP,
      BEGIN OF ZI_00_FLIGHTTP,
 CREATE_ZI_00_FLIGHTTP          TYPE /BOBF/ACT_KEY VALUE '005056044E851EECA5B10BC7C9206F46',
 DELETE_ZI_00_FLIGHTTP          TYPE /BOBF/ACT_KEY VALUE '005056044E851EECA5B10BC7C920EF46',
 SAVE_ZI_00_FLIGHTTP            TYPE /BOBF/ACT_KEY VALUE '005056044E851EECA5B10BC7C9216F46',
 UPDATE_ZI_00_FLIGHTTP          TYPE /BOBF/ACT_KEY VALUE '005056044E851EECA5B10BC7C920AF46',
 VALIDATE_ZI_00_FLIGHTTP        TYPE /BOBF/ACT_KEY VALUE '005056044E851EECA5B10BC7C9212F46',
      END OF ZI_00_FLIGHTTP,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF ZI_00_CONNECTIONTP,
        BEGIN OF LOCK_ZI_00_CONNECTIONTP,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF LOCK_ZI_00_CONNECTIONTP,
        BEGIN OF UNLOCK_ZI_00_CONNECTIONTP,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF UNLOCK_ZI_00_CONNECTIONTP,
      END OF ZI_00_CONNECTIONTP,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ALTERNATIVE_KEY,
      BEGIN OF ZI_00_CONNECTIONTP,
 DB_KEY                         TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056044E851EECA5AF29BDA40087E1',
      END OF ZI_00_CONNECTIONTP,
      BEGIN OF ZI_00_FLIGHTTP,
 DB_KEY                         TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056044E851EECA5B10BC7C91C8F46',
 PARENT_KEY                     TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056044E851EECA5B10BC7C91CAF46',
      END OF ZI_00_FLIGHTTP,
    END OF SC_ALTERNATIVE_KEY .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF ZI_00_CONNECTIONTP,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5AF2997D68687E1',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5AF2997D68647E1',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5AF2997D68747E1',
 _FLIGHTS                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5B10BC7C91FAF46',
      END OF ZI_00_CONNECTIONTP,
      BEGIN OF ZI_00_CONNECTIONTP_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5AF2997D688C7E1',
      END OF ZI_00_CONNECTIONTP_LOCK,
      BEGIN OF ZI_00_CONNECTIONTP_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5AF2997D688A7E1',
      END OF ZI_00_CONNECTIONTP_MESSAGE,
      BEGIN OF ZI_00_CONNECTIONTP_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5AF2997D688E7E1',
      END OF ZI_00_CONNECTIONTP_PROPERTY,
      BEGIN OF ZI_00_FLIGHTTP,
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5B10BC7C9200F46',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5B10BC7C9204F46',
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5B10BC7C921AF46',
 TO_ROOT                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5B10BC7C921CF46',
      END OF ZI_00_FLIGHTTP,
      BEGIN OF ZI_00_FLIGHTTP_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5B10BC7C921EF46',
      END OF ZI_00_FLIGHTTP_MESSAGE,
      BEGIN OF ZI_00_FLIGHTTP_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056044E851EECA5B10BC7C9220F46',
      END OF ZI_00_FLIGHTTP_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF ZI_00_CONNECTIONTP,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF ZI_00_CONNECTIONTP,
      BEGIN OF ZI_00_FLIGHTTP,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF ZI_00_FLIGHTTP,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE '005056044E851EECA5AF2997D685A7E1' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'ZI_00_CONNECTIONTP' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF ZI_00_CONNECTIONTP,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '005056044E851EECA5AF29BDA400A7E1',
 CALC_DEPARTURE                 TYPE /BOBF/DET_KEY VALUE '005056044E851EDCA5C7A64E3765CE82',
      END OF ZI_00_CONNECTIONTP,
      BEGIN OF ZI_00_FLIGHTTP,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '005056044E851EECA5B10BC7C91CCF46',
      END OF ZI_00_FLIGHTTP,
    END OF SC_DETERMINATION .
  constants:
    BEGIN OF SC_GROUP,
 ZI_00_CONNECTIONTP             TYPE /BOBF/OBM_GROUP_KEY VALUE '005056044E851EECA5AF29BDA40807E1',
    END OF SC_GROUP .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 ZI_00_CONNECTIONTP             TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EECA5AF2997D685E7E1',
 ZI_00_CONNECTIONTP_LOCK        TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EECA5AF2997D68667E1',
 ZI_00_CONNECTIONTP_MESSAGE     TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EECA5AF2997D68627E1',
 ZI_00_CONNECTIONTP_PROPERTY    TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EECA5AF2997D68727E1',
 ZI_00_FLIGHTTP                 TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EECA5B10BC7C91BCF46',
 ZI_00_FLIGHTTP_MESSAGE         TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EECA5B10BC7C91FEF46',
 ZI_00_FLIGHTTP_PROPERTY        TYPE /BOBF/OBM_NODE_KEY VALUE '005056044E851EECA5B10BC7C9202F46',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF ZI_00_CONNECTIONTP,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  CARRIERID                      TYPE STRING VALUE 'CARRIERID',
  CONNECTIONID                   TYPE STRING VALUE 'CONNECTIONID',
  COUNTRYFROM                    TYPE STRING VALUE 'COUNTRYFROM',
  CITYFROM                       TYPE STRING VALUE 'CITYFROM',
  AIRPORTFROM                    TYPE STRING VALUE 'AIRPORTFROM',
  COUNTRYTO                      TYPE STRING VALUE 'COUNTRYTO',
  CITYTO                         TYPE STRING VALUE 'CITYTO',
  AIRPORTTO                      TYPE STRING VALUE 'AIRPORTTO',
  DEPARTURETIME                  TYPE STRING VALUE 'DEPARTURETIME',
  ARRIVALTIME                    TYPE STRING VALUE 'ARRIVALTIME',
  DISTANCE                       TYPE STRING VALUE 'DISTANCE',
  DISTANCEUNIT                   TYPE STRING VALUE 'DISTANCEUNIT',
  FLIGHTTYPE                     TYPE STRING VALUE 'FLIGHTTYPE',
      END OF ZI_00_CONNECTIONTP,
      BEGIN OF ZI_00_FLIGHTTP,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  CARRIERID                      TYPE STRING VALUE 'CARRIERID',
  CONNECTIONID                   TYPE STRING VALUE 'CONNECTIONID',
  FLIGHTDATE                     TYPE STRING VALUE 'FLIGHTDATE',
  PRICE                          TYPE STRING VALUE 'PRICE',
  CURRENCYCODE                   TYPE STRING VALUE 'CURRENCYCODE',
  PLANETYPE                      TYPE STRING VALUE 'PLANETYPE',
  SEATSMAX                       TYPE STRING VALUE 'SEATSMAX',
  SEATSOCCUPIED                  TYPE STRING VALUE 'SEATSOCCUPIED',
      END OF ZI_00_FLIGHTTP,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF ZI_00_CONNECTIONTP,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '005056044E851EECA5AF2997D68607E1',
      END OF ZI_00_CONNECTIONTP,
      BEGIN OF ZI_00_FLIGHTTP,
 ZI_00_FLIGHTTP                 TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '005056044E851EECA5B10BC7C91F8F46',
      END OF ZI_00_FLIGHTTP,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF ZI_00_CONNECTIONTP,
 ALTKEY_UNIQUENESS_CHECK        TYPE /BOBF/VAL_KEY VALUE '005056044E851EECA5AF29BDA40107E1',
 MANDATORY_FIELDS               TYPE /BOBF/VAL_KEY VALUE '005056044E851EDCA5C7921CEBCE6E19',
      END OF ZI_00_CONNECTIONTP,
      BEGIN OF ZI_00_FLIGHTTP,
 ALTKEY_UNIQUENESS_CHECK        TYPE /BOBF/VAL_KEY VALUE '005056044E851EECA5B10BC7C91D4F46',
      END OF ZI_00_FLIGHTTP,
    END OF SC_VALIDATION .
endinterface.