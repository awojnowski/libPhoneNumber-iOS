libPhoneNumber for iOS

* NBPhoneNumberUtil (유틸리티 클래스, 싱글턴)
* NBPhoneMetaDataGenerator (메타 데이타 PhoneNumberMetaData.xml 를 읽어서 저장)
* NBPhoneNumber, NBNumberFormat, NBPhoneNumberDesc, NBPhoneMetaData : 메타 데이타 클래스 및 관련 클래스들 

- M2PhoneMetaDataGenerator 에서 XML를 읽어서 파싱하지 않고, .m, .h 파일을 생성하도록 메타 데이터 생성 스크립트 제작 해야 함. (이 후 필요에 따라 제너레이팅 함)
	-> XML 로드에서 Javascript Object 를 로드 한 후 JSON으로 변경(PHP, httpd, javscript 이용)하여 파일 제너레이트 한 녀석을 이용하도록 처리


[진행 계획]
* phonenumberutil.js 무결성 체크 (1차적으로 유닛 테스트는 통과)



[포팅 규칙]
* .js 파일들의 모양새 (주석 위치 등등)을 최대한 변형 하지 않기~
