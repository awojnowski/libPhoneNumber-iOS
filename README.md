libPhoneNumber for iOS

* NBPhoneNumberManager (유틸리티 클래스)

* M2PhoneMetaDataGenerator (메타 데이타 PhoneNumberMetaData.xml 를 읽어서 저장)
	-> M2 를 NB로 변경해야함

* NBPhoneNumber, NBNumberFormat, NBPhoneNumberDesc, NBPhoneMetaData : 메타 데이타 클래스 및 관련 클래스들 


- M2PhoneMetaDataGenerator 에서 XML를 읽어서 파싱하지 않고, .m, .h 파일을 생성하도록 메타 데이터 생성 스크립트 제작 해야 함. (이 후 필요에 따라 제너레이팅 함)

[진행 계획]
1. phonenumberutil_test.js 유닛테스트들을 libPhoneNumberTests 로 옮겼음
	-> 신텍스에 따라 맞춰 줘야 함… 귀찮음
2. phonenumberutil.js 함수들 확인 필요함. call by ref 에 대한 처리 등이 빠짐
3. metadata.js 무결정 체크 (phonenumberutil.js 에서 포팅도중 빠진 데이터 프로퍼티들이 있음)

