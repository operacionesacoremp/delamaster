DECLARE @CREDAT VARCHAR(MAX)
SET @CREDAT = '05/01/2015'

IF OBJECT_ID('tempdb..#Trk', 'U') IS NOT NULL
BEGIN
	DROP TABLE #Trk
END
SELECT 
	'Track with missing MAT, OPE and ITM Records' MissingRecords, 
	ht.MFGNUM_0, 
	ht.MFGTRKNUM_0 TrackingNumber, 
	ht.ITMTRKFLG_0, 
	itm.MFGTRKNUM_0 Itm_MFGTRKNUM, 
	mat.MFGTRKNUM_0 Mat_MFGTRKNUM,
	ope.MFGTRKNUM_0 Ope_MFGTRKNUM,
	ht.CREDAT_0
INTO #Trk
FROM ECCPROD.MFGHEADTRK ht
	LEFT JOIN ECCPROD.MFGITMTRK itm
		ON ht.MFGTRKNUM_0 = itm.MFGTRKNUM_0
	LEFT JOIN ECCPROD.MFGMATTRK mat
		ON ht.MFGTRKNUM_0 = mat.MFGTRKNUM_0
	LEFT JOIN ECCPROD.MFGOPETRK ope
		ON ht.MFGTRKNUM_0 = ope.MFGTRKNUM_0
WHERE 
	(itm.MFGTRKNUM_0 IS NULL AND mat.MFGTRKNUM_0 IS NULL AND ope.MFGTRKNUM_0 IS NULL)
	AND ht.CREDAT_0 >= @CREDAT 
	--AND (ITMTRKFLG_0 = 2 or MATTRKFLG_0 = 2 or OPETRKFLG_0 = 2)
ORDER BY ht.ROWID DESC



SELECT * FROM #Trk
WHERE MFGNUM_0 IN(
'P1505000137',
'P1506000169',
'P1506000170',
'P1504000106',
'P1504000096',
'P1506000194',
'P1504000086',
'P1505000119',
'P1504000105',
'P1505000150',
'P1506000178',
'P1505000149',
'P1505000136',
'P1504000095',
'P1506000193',
'P1506000190',
'P1506000168',
'W002632',
'W002788',
'W002862',
'W002783',
'W002886',
'W002822',
'W002878',
' ',
'W002886',
'P1504000095',
' ',
'P1506000169',
' ',
'W002928',
' ',
'W002921',
'P1505000149',
' ',
'P1504000105',
'P1505000150',
' ',
'W002777',
'W002597',
' ',
'P1506000178',
'W002928',
'W002640',
'W002734',
'W002795',
'W002795',
'W002795',
'W002795',
'W002795',
'W002795',
'W002795',
'W002795',
'W002795',
'W002795',
'W002795',
'W002795',
'W002795',
'W002795',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002734',
'W002783',
'W002783',
'W002783',
'W002783',
'W002783',
'W002783',
'W002783',
'W002783',
'W002783',
'W002783',
'W002783',
'W002648',
'W002648',
'W002749',
'W002749',
'W002749',
'W002749',
'W002749',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002691',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002743',
'W002640',
'W002640',
'W002640',
'W002640',
'W002640',
'W002640',
'W002640',
'W002640',
'W002640',
'W002640',
'W002640',
'W002640',
'W002640',
'W002648',
'W002648',
'W002648',
'W002648',
'W002648',
'W002648',
'W002648',
'W002648',
'W002648',
'W002648',
'W002648',
'W002648',
'W002648',
'W002648',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002607',
'W002676',
'W002676',
'W002631',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002914',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002683',
'W002837',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002815',
'W002683',
'W002683',
'W002683',
'W002676',
'W002676',
'W002676',
'W002676',
'W002676',
'W002676',
'W002676',
'W002676',
'W002676',
'W002676',
'W002676',
'W002676',
'W002676',
'W002676',
'W002676',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002631',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002597',
'W002597',
'W002597',
'W002597',
'W002597',
'W002597',
'W002597',
'W002597',
'W002597',
'W002597',
'W002597',
'W002597',
'W002597',
'W002597',
'W002597',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002776',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002861',
'W002862',
'W002862',
'W002862',
'W002862',
'W002862',
'W002862',
'W002862',
'W002862',
'W002862',
'W002862',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002886',
'W002699',
'W002699',
'W002699',
'W002699',
'W002699',
'W002699',
'W002699',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002776',
'W002776',
'W002776',
'W002776',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002921',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002591',
'W002822',
'W002822',
'W002822',
'W002822',
'W002822',
'W002822',
'W002822',
'W002822',
'W002822',
'W002822',
'W002822',
'W002822',
'W002822',
'W002822',
'W002822',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002905',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002837',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002878',
'W002597',
'W002597',
'W002870',
'W002871',
'W002871',
'W002871',
'W002871',
'W002871',
'W002871',
'W002871',
'W002871',
'W002871',
'W002871',
'W002871',
'W002878',
'W002862',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002870',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002830',
'W002628',
'W002628',
'W002628',
'W002628',
'W002628',
'W002628',
'W002628',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002726',
'W002734',
'W002691',
'W002676',
'W002683',
'W002861',
'W002886',
'W002597',
'W002648',
'W002726',
' ',
' ',
'P1505000136',
'W002628',
' ',
' ',
'P1505000119',
'W002914',
'W002837',
'W002805',
'W002929',
'W002726',
'W002676',
'W002648',
'W002640',
'W002631',
'W002870',
'W002691',
'W002921',
'W002796',
'W002792',
'W002749',
'W002640',
'W002789',
'W002822',
'W002640',
'W002749',
'W002785',
'W002784',
'W002878',
'W002607',
'W002691',
'W002591',
'W002870',
' ',
'P1504000086',
'P1504000096',
' ',
'W002789',
'W002922',
'W002922',
'W002906',
'W002676',
'W002675',
'W002675',
'W002728',
'W002632',
'W002632',
'W002692',
'W002922',
'W002922',
'W002863',
'W002592',
'W002816',
'W002816',
'W002831',
'W002831',
'W002831',
'W002831',
'W002592',
'W002592',
'W002592',
'W002592',
'W002863',
'W002863',
'W002880',
'W002880',
'W002880',
'W002880',
'W002816',
'W002728',
'W002728',
'W002728',
'W002728',
'W002692',
'W002632',
'W002632',
'W002632',
'W002675',
'W002675',
'W002675',
'W002906',
'W002906',
'W002906',
'W002906',
'W002726',
'W002824',
'W002837',
'W002914',
'W002783',
'W002921',
'W002881',
'W002628',
'W002816',
'W002816',
'W002726',
'W002591',
'W002825',
'W002851',
'W002851',
'W002851',
'W002851',
'W002851',
'W002851',
'W002851',
'W002851',
'W002851',
'W002851',
'W002865',
'W002865',
'W002865',
'W002865',
'W002865',
'W002865',
'W002865',
'W002865',
'W002873',
'W002873',
'W002865',
'W002865',
'W002900',
'W002888',
'W002888',
'W002888',
'W002888',
'W002888',
'W002888',
'W002888',
'W002908',
'W002908',
'W002908',
'W002908',
'W002908',
'W002908',
'W002908',
'W002908',
'W002908',
'W002888',
'W002873',
'W002873',
'W002873',
'W002873',
'W002873',
'W002873',
'W002873',
'W002873',
'W002873',
'W002900',
'W002900',
'W002900',
'W002900',
'W002908',
'W002908',
'W002916',
'W002916',
'W002916',
'W002916',
'W002916',
'W002916',
'W002916',
'W002916',
'W002916',
'W002916',
'W002916',
'W002608',
'W002634',
'W002608',
'W002634',
'W002634',
'W002678',
'W002678',
'W002678',
'W002686',
'W002634',
'W002634',
'W002608',
'W002608',
'W002634',
'W002608',
'W002608',
'W002678',
'W002678',
'W002678',
'W002678',
'W002678',
'W002678',
'W002678',
'W002818',
'W002818',
'W002686',
'W002818',
'W002818',
'W002818',
'W002686',
'W002686',
'W002838',
'W002838',
'W002838',
'W002838',
'W002838',
'W002838',
'W002838',
'W002838',
'W002838',
'W002695',
'W002695',
'W002695',
'W002695',
'W002695',
'W002634',
'W002695',
'W002695',
'W002695',
'W002695',
'W002695',
'W002695',
'W002761',
'W002761',
'W002761',
'W002761',
'W002761',
'W002761',
'W002736',
'W002736',
'W002736',
'W002751',
'W002751',
'W002751',
'W002751',
'W002751',
'W002736',
'W002736',
'W002736',
'W002700',
'W002751',
'W002751',
'W002751',
'W002643',
'W002643',
'W002643',
'W002643',
'W002643',
'W002643',
'W002643',
'W002643',
'W002643',
'W002643',
'W002785',
'W002643',
'W002643',
'W002785',
'W002785',
'W002643',
'W002643',
'W002643',
'W002736',
'W002736',
'W002785',
'W002736',
'W002736',
'W002601',
'W002608',
'W002608',
'W002825',
'W002825',
'W002825',
'W002825',
'W002825',
'W002825',
'W002825',
'W002825',
'W002825',
'W002700',
'W002700',
'W002700',
'W002796',
'W002796',
'W002796',
'W002779',
'W002779',
'W002779',
'W002779',
'W002779',
'W002779',
'W002779',
'W002779',
'W002779',
'W002601',
'W002601',
'W002601',
'W002601',
'W002601',
'W002601',
'W002601',
'W002611',
'W002611',
'W002611',
'W002611',
'W002825',
'W002725',
'W002725',
'W002725',
'W002725',
'W002725',
'W002690',
'W002690',
'W002823',
'W002829',
'W002829',
'W002829',
'W002829',
'W002598',
'W002598',
'W002927',
'W002860',
'W002860',
'W002860',
'W002860',
'W002869',
'W002869',
'W002869',
'W002630',
'W002630',
'W002690',
'W002860',
'W002860',
'W002860',
'W002775',
'W002920',
'W002775',
'W002775',
'W002920',
'W002791',
'W002885',
'W002590',
'W002823',
'W002823',
'W002823',
'W002823',
'W002823',
'W002829',
'W002829',
'W002829',
'W002823',
'W002877',
'W002877',
'W002598',
'W002598',
'W002598',
'W002904',
'W002904',
'W002904',
'W002904',
'W002904',
'W002904',
'W002904',
'W002904',
'W002836',
'W002836',
'W002605',
'W002605',
'W002605',
'W002877',
'W002877',
'W002885',
'W002869',
'W002869',
'W002590',
'W002590',
'W002590',
'W002869',
'W002869',
'W002869',
'W002877',
'W002641',
'W002775',
'W002641',
'W002641',
'W002775',
'W002775',
'W002775',
'W002737',
'W002737',
'W002641',
'W002791',
'W002791',
'W002791',
'W002791',
'W002742',
'W002748',
'W002737',
'W002737',
'W002737',
'W002737',
'W002648',
'W002742',
'W002654',
'W002654',
'W002654',
'W002742',
'W002742',
'W002742',
'W002690',
'W002610',
'W002690',
'W002682',
'W002682',
'W002682',
'W002682',
'W002814',
'W002814',
'W002814',
'W002814',
'W002641',
'W002641',
'W002814',
'W002814',
'W002814',
'W002682',
'W002682',
'W002674',
'W002674',
'W002674',
'W002674',
'W002674',
'W002674',
'W002674',
'W002630',
'W002630',
'W002913',
'W002630',
'W002630',
'W002630',
'W002630',
'W002605',
'W002605',
'W002641',
'W002641',
'W002641',
'W002913',
'W002913',
'W002913',
'W002913',
'W002913',
'W002913',
'W002920',
'W002920',
'W002597',
'W002592',
'W002678',
'W002685',
'W002677',
'W002677',
'W002685',
'W002685',
'W002685',
'W002685',
'W002817',
'W002677',
'W002677',
'W002677',
'W002677',
'W002633',
'W002633',
'W002677',
'W002677',
'W002677',
'W002642',
'W002685',
'W002642',
'W002642',
'W002685',
'W002685',
'W002685',
'W002685',
'W002817',
'W002817',
'W002817',
'W002685',
'W002729',
'W002729',
'W002729',
'W002729',
'W002817',
'W002817',
'W002817',
'W002817',
'W002817',
'W002633',
'W002606',
'W002915',
'W002915',
'W002606',
'W002606',
'W002606',
'W002642',
'W002642',
'W002606',
'W002606',
'W002633',
'W002633',
'W002633',
'W002677',
'W002633',
'W002633',
'W002633',
'W002923',
'W002923',
'W002915',
'W002915',
'W002915',
'W002832',
'W002915',
'W002915',
'W002915',
'W002915',
'W002915',
'W002606',
'W002915',
'W002694',
'W002694',
'W002907',
'W002907',
'W002694',
'W002694',
'W002694',
'W002633',
'W002744',
'W002744',
'W002744',
'W002744',
'W002744',
'W002649',
'W002649',
'W002649',
'W002784',
'W002735',
'W002735',
'W002735',
'W002784',
'W002784',
'W002784',
'W002642',
'W002642',
'W002642',
'W002642',
'W002642',
'W002642',
'W002735',
'W002735',
'W002735',
'W002735',
'W002735',
'W002735',
'W002778',
'W002735',
'W002735',
'W002599',
'W002599',
'W002599',
'W002599',
'W002599',
'W002599',
'W002864',
'W002864',
'W002864',
'W002864',
'W002864',
'W002864',
'W002864',
'W002864',
'W002864',
'W002864',
'W002864',
'W002778',
'W002778',
'W002817',
'W002923',
'W002778',
'W002778',
'W002778',
'W002778',
'W002923',
'W002923',
'W002923',
'W002923',
'W002923',
'W002923',
'W002778',
'W002778',
'W002778',
'W002778',
'W002872',
'W002872',
'W002872',
'W002872',
'W002872',
'W002872',
'W002593',
'W002872',
'W002872',
'W002872',
'W002593',
'W002593',
'W002593',
'W002593',
'W002593',
'W002593',
'W002872',
'W002872',
'W002881',
'W002881',
'W002881',
'W002881',
'W002881',
'W002606',
'W002881',
'W002881',
'W002881',
'W002881',
'W002606',
'W002599',
'W002599',
'W002599',
'W002907',
'W002907',
'W002907',
'W002907',
'W002907',
'W002907',
'W002907',
'W002907',
'W002907',
'W002824',
'W002824',
'W002824',
'W002832',
'W002824',
'W002824',
'W002824',
'W002824',
'W002824',
'W002824',
'W002832',
'W002832',
'W002832',
'W002832',
'W002832',
'W002832',
'W002729',
'W002729',
'W002729',
'W002729',
'W002729',
'W002729',
'W002729',
'W002593',
'W002608',
'W002736',
'W002632',
'W002606',
'W002590',
'W002633',
'W002601',
'W002817',
'W002775',
'W002860',
'W002605',
'W002698',
'W002610',
'W002599',
'W002861',
'W002817',
'W002633',
'W002929',
'W002736',
'W002605',
'W002598',
'W002678',
'W002593',
'W002734',
'W002590',
'W002761',
'SCS000342',
'W002761',
'W002605',
'W002606',
'W002593',
'W002590',
'W002869',
'W002641',
'W002654',
'W002641',
'W002836',
'W002751',
'W002736',
'W002736',
'W002736',
'W002608',
'P1504000096',
'P1504000096',
' ',
'P1504000086',
'P1504000086',
'P1505000119',
'P1505000119',
' ',
' ',
'P1505000136',
'P1505000136',
' ',
' ',
'W002648',
'W002631',
'W002640',
'W002591',
'W002591',
'W002676',
'W002691',
'W002683',
'W002726',
'W002607',
'P1506000178',
'P1506000178',
' ',
' ',
'P1505000150',
'P1505000150',
'P1504000105',
'P1504000105',
' ',
' ',
'P1505000149',
'P1505000149',
'P1506000169',
' ',
'P1506000169',
' ',
'P1504000095',
'P1504000095',
'W002862',
'W002632',
'P1506000168',
'P1506000168',
'P1506000190',
'P1506000190',
'P1506000193',
'P1506000193',
'P1504000095',
'P1504000095',
'P1505000136',
'P1505000136',
'P1505000149',
'P1505000149',
'P1506000178',
'P1506000178',
'P1505000150',
'P1505000150',
'P1504000105',
'P1504000105',
'P1505000119',
'P1505000119',
'P1504000086',
'P1504000086',
'P1506000194',
'P1506000194',
'P1504000096',
'P1504000096',
'P1504000106',
'P1504000106',
'P1506000170',
'P1506000170',
'P1506000169',
'P1506000169',
'P1505000137',
'P1505000137')