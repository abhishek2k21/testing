curl --location 'https://fastag-issuer-netc-engine-nonprod-internal.paytmbank.com:443/reqPayService' \
--header 'Content-Type: text/plain' \
--data-raw '<?xml version="1.0" encoding="UTF-8"?><etc:ReqPay xmlns:etc="http://npci.org/etc/schema/"><Head msgId="ACQ000011894208925" orgId="ICIA" ts="2025-09-09T12:18:56" ver="1.0"/><Meta><Tag name="PAYREQSTART" value="2025-09-09T12:18:55"/><Tag name="PAYREQEND" value="2025-09-09T12:18:55"/></Meta><Txn id="005582957135" orgTxnId="" refId="257001L02090925121823" refUrl="" ts="2025-09-09T12:18:55" type="DEBIT"><RiskScores><Score provider="NPCI" type="TXNRISK" value="00999"/></RiskScores></Txn><Merchant geoCode="13.476043,74.7127896" id="257001" name="Sasthan Toll Plaza" subtype="National" type="Toll"><Lane direction="N" id="L02" readerId=""/><Parking floor="" readerId="" slotId="" zone=""/><ReaderVerificationResult procRestrictionResult="" publicKeyCVV="" signAuth="VALID" signData="" tagVerified="NETC TAG" tsRead="2025-09-09T12:18:23" txnCounter="5485" txnStatus="SUCCESS" vehicleAuth="UNKNOWN"/></Merchant><Vehicle TID="E20034120124FF000AC920EB" avc="VC20" tagId="34161FA820929E40071FFDR3" wim=""><VehicleDetails><Detail name="VEHICLECLASS" value="VC4"/><Detail name="REGNUMBER" value="FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ=="/><Detail name="TAGSTATUS" value="A"/><Detail name="ISSUEDATE" value="19-12-2019"/><Detail name="EXCCODE" value="00"/><Detail name="BANKID" value="608032"/><Detail name="COMVEHICLE" value="F"/></VehicleDetails></Vehicle><Payer addr="34161FA820328E40071FFFC0@608032.iin.npci" name="" type="PERSON"><Amount curr="INR" value="30.00"/></Payer><Payee addr="720301@iin.npci" name="" type="MERCHANT"/></etc:ReqPay>'



Time	message	level	mdc.x_request_id	req.id
	Sep 16, 2025 @ 12:28:13.166	className=AsyncTransactionRepository, methodName=save, group=DB, Time elapsed=10 ms	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:13.166	sending data to topic='fastag_issuer_staging_response_queue' and data='{"res_type_enum":"RESPPAY","response_data":"{\"ts\":\"2025-09-16T12:28:13\",\"reference_id\":2416427420,\"http_code\":\"202\"}"}'	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:13.156	className=AsyncTransactionRepository, methodName=findById, group=DB, Time elapsed=14 ms	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:13.141	RespPay response code: 202 ACCEPTED for msgId: ACQ000011894208925	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:13.140	url : http://middleware-banktest-automation.eks-mwite1/genericMock2/Svs-IssuerNPCI/responsePayService, method : POST, responseBody : null, httpStatus : 202 ACCEPTED	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:13.087	url : http://middleware-banktest-automation.eks-mwite1/genericMock2/Svs-IssuerNPCI/responsePayService, method : POST, requestBody : <?xml version="1.0" encoding="UTF-8" standalone="no"?><etc:RespPay xmlns:etc="http://npci.org/etc/schema/"><Head msgId="ACQ000011894208925" orgId="PAYM" ts="2025-09-16T12:28:12" ver="1.0"/><Txn id="005582957135" note="" orgTxnId="" refId="257001L02090925121823" refUrl="" ts="2025-09-09T12:18:55" type="DEBIT"><RiskScores><Score provider="NPCI" type="TXNRISK" value="00999"/></RiskScores></Txn><Resp merchantId="257001" respCode="000" result="ACCEPTED" ts="2025-09-16T12:28:12"><Ref accType="" addr="34161FA820328E40071FFFC0@608032.iin.npci" approvalNum="7420" avalBal="" customerName="" errCode="052" ledgerBal="" maskedAccountNumber="" settAmount="30.00" settCurrency="INR" type="PAYER"/></Resp><Signature xmlns="http://www.w3.org/2000/09/xmldsig#"><SignedInfo><CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"/><SignatureMethod Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"/><Reference URI=""><Transforms><Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"/></Transforms><DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/><DigestValue>BxTEUHVF2Lnad9/ImYDrL/TSIAGuzqtgMptdMz411Hc=</DigestValue></Reference></SignedInfo><SignatureValue>O7xMR9BY4vakgOuSjBKz/tw7b1tTybtUZ/h3VXL3rOTFm6MEC/S8m5sTEpHvGFUSUZoUG5hdJVp4&#13;
1u/yuSWQ7GzlwxH2OpRaGWGXtU7n56ZbB2lEGZm3y80QD20NZqtnBZAaZne71rlDQgsoF4JTQ++8&#13;
dHPSqnEftBmDAT1A3Z5MwZ1CO64UxGrWwbqTn5ndtLdm+/V0Jp9o3g7w2ILXwHZkK/DbeUp2+Z4I&#13;
9IDb3UiZmFAMukrNltBxRPr2W+iwJeVyQtH3b9arVgZwqKpis3YEjlnzQweXUPJLL+Ik67Wt3kYs&#13;
+1hTe1RG485PSSP/BqbmaPdFL7gLECnvK3eU4w==</SignatureValue><KeyInfo><X509Data><X509SubjectName>CN=netc-uat.paytm.com,O=One97 Communications Limited,L=Noida,ST=Uttar Pradesh,C=IN</X509SubjectName><X509Certificate>MIIHIjCCBgqgAwIBAgIQDc2bPRcBC8If34pOCuNLXzANBgkqhkiG9w0BAQsFADBNMQswCQYDVQQG&#13;
EwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMScwJQYDVQQDEx5EaWdpQ2VydCBTSEEyIFNlY3Vy&#13;
ZSBTZXJ2ZXIgQ0EwHhcNMTgwMzI4MDAwMDAwWhcNMjAwNjMwMDAwMDAwWjB5MQswCQYDVQQGEwJJ&#13;
TjEWMBQGA1UECBMNVXR0YXIgUHJhZGVzaDEOMAwGA1UEBxMFTm9pZGExJTAjBgNVBAoTHE9uZTk3&#13;
IENvbW11bmljYXRpb25zIExpbWl0ZWQxGzAZBgNVBAMTEm5ldGMtdWF0LnBheXRtLmNvbTCCASIw&#13;
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJS/31I5LXeoJCsLNLEYevfvYT2+/ZdaeasLn1JW&#13;
VnZoTRdtyFsz/4rtmEf7kTmdMUp8ur5z6kgboJvDrSzbEYw4dSpLbcbeRQ//2814Ay/oenYmeXis&#13;
q1A7HUcNgLB+k8u5CdM+OOwEk4qetMnaXb5M+d7IGWf0mAuctr2jfN1jIml2xh3hCQpfKRVEYaWd&#13;
TmM90MwyDaK8aH1GdfIJiWngL2WQW6nWhu5d9Yf3kxmwMd5+4zDcV/AB8aFm5sSooZrf7h4ENE3s&#13;
RBMFmCWfoUR6LU7/C6gbqWEOrYD4/mkR1WWL2QuAcF3n0O2UHzW9d17899915CYIcNLSbr9AsKcC&#13;
AwEAAaOCA9AwggPMMB8GA1UdIwQYMBaAFA+AYRyCMWHVLyjnjUY4tCzhxtniMB0GA1UdDgQWBBRC&#13;
eryYzDMYNmtrjZqGZmQOtWMiVTAdBgNVHREEFjAUghJuZXRjLXVhdC5wYXl0bS5jb20wDgYDVR0P&#13;
AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjBrBgNVHR8EZDBiMC+gLaAr&#13;
hilodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vc3NjYS1zaGEyLWc2LmNybDAvoC2gK4YpaHR0cDov&#13;
L2NybDQuZGlnaWNlcnQuY29tL3NzY2Etc2hhMi1nNi5jcmwwTAYDVR0gBEUwQzA3BglghkgBhv1s&#13;
AQEwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cuZGlnaWNlcnQuY29tL0NQUzAIBgZngQwBAgIw&#13;
fAYIKwYBBQUHAQEEcDBuMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wRgYI&#13;
KwYBBQUHMAKGOmh0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFNIQTJTZWN1cmVT&#13;
ZXJ2ZXJDQS5jcnQwCQYDVR0TBAIwADCCAfYGCisGAQQB1nkCBAIEggHmBIIB4gHgAHYApLkJkLQY&#13;
WBSHuxOizGdwCjw1mAT5G9+443fNDsgN3BAAAAFibFGeCAAABAMARzBFAiBhgMf63e/FBWE+ddij&#13;
BKfgWrG5coSz5XjQp8e2UKqChAIhAO6yW+nOEepKPWKKfKp0SREMmC5A+0pR+4TKrPpekR87AHcA&#13;
b1N2rDHwMRnYmQCkURX/dxUcEdkCwQApBo2yCJo32RMAAAFibFGfOwAABAMASDBGAiEA0sjw7Jxj&#13;
aGP1y1fMA/PZPOoatXu31riGl85NBRMVYkACIQD0t+vUxoc5A+CkG23Ao4tMWXqA1z1MQBM6ordr&#13;
LfRRzgB1ALvZ37wfinG1k5Qjl6qSe0c4V5UKq1LoGpCWZDaOHtGFAAABYmxRnjUAAAQDAEYwRAIg&#13;
QK7PDlyu7xIq/2IBUBLZ7RGEGdRunfYcBGiW1SknZ50CIHBrnCrmamZ39pxEz+LysR3Jr80YOYtb&#13;
F4yFdkKk/VAUAHYAVYHUwhaQNgFK6gubVzxT8MDkOHhwJQgXL6OqHQcT0wwAAAFibFGglgAABAMA&#13;
RzBFAiA01j23Ewp5jKaOJZS8WwPqY2d/XHTEYaoMqt5VI7v7MwIhALJqAyJzH5iMt00EVdKRMycA&#13;
1879oj87Q/hC6i0xOV1tMA0GCSqGSIb3DQEBCwUAA4IBAQCMUlyD2h5y/4VRoA8OGIY22OUiuw+w&#13;
sucSkkwF1GF6vdy4rPYXi8urUQoqWijq4sY1DD+IxEenuhr/CqumdrmeecLoK+R5pDm4Gt6gCxQH&#13;
Kq911vUIL3Qxd3V6Jj0VdHGkyRCmVmGjze/WOq63xyydJWlQUioX+rQjfo/2sn/0vv84FxkVQogR&#13;
Rtgw1mm3mtMF2mLN9lyjGbGOktjKC54Y95ZYvkc9W2NWsLvDhOpNRaGiQp2GEn83J7qEiAbtbhKn&#13;
3y2TPg28A0rBpaYIHFAOTPA+wJFNNAmKim8BPFVJO6EajksMx+R+zgwWtvActuY+M92xzyf97kby&#13;
lwHn/xSu</X509Certificate></X509Data></KeyInfo></Signature></etc:RespPay>	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:13.087	hitting netc service for respPay	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:13.086	Signed RespPay request. <?xml version="1.0" encoding="UTF-8" standalone="no"?><etc:RespPay xmlns:etc="http://npci.org/etc/schema/"><Head msgId="ACQ000011894208925" orgId="PAYM" ts="2025-09-16T12:28:12" ver="1.0"/><Txn id="005582957135" note="" orgTxnId="" refId="257001L02090925121823" refUrl="" ts="2025-09-09T12:18:55" type="DEBIT"><RiskScores><Score provider="NPCI" type="TXNRISK" value="00999"/></RiskScores></Txn><Resp merchantId="257001" respCode="000" result="ACCEPTED" ts="2025-09-16T12:28:12"><Ref accType="" addr="34161FA820328E40071FFFC0@608032.iin.npci" approvalNum="7420" avalBal="" customerName="" errCode="052" ledgerBal="" maskedAccountNumber="" settAmount="30.00" settCurrency="INR" type="PAYER"/></Resp><Signature xmlns="http://www.w3.org/2000/09/xmldsig#"><SignedInfo><CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"/><SignatureMethod Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"/><Reference URI=""><Transforms><Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"/></Transforms><DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/><DigestValue>BxTEUHVF2Lnad9/ImYDrL/TSIAGuzqtgMptdMz411Hc=</DigestValue></Reference></SignedInfo><SignatureValue>O7xMR9BY4vakgOuSjBKz/tw7b1tTybtUZ/h3VXL3rOTFm6MEC/S8m5sTEpHvGFUSUZoUG5hdJVp4&#13;
1u/yuSWQ7GzlwxH2OpRaGWGXtU7n56ZbB2lEGZm3y80QD20NZqtnBZAaZne71rlDQgsoF4JTQ++8&#13;
dHPSqnEftBmDAT1A3Z5MwZ1CO64UxGrWwbqTn5ndtLdm+/V0Jp9o3g7w2ILXwHZkK/DbeUp2+Z4I&#13;
9IDb3UiZmFAMukrNltBxRPr2W+iwJeVyQtH3b9arVgZwqKpis3YEjlnzQweXUPJLL+Ik67Wt3kYs&#13;
+1hTe1RG485PSSP/BqbmaPdFL7gLECnvK3eU4w==</SignatureValue><KeyInfo><X509Data><X509SubjectName>CN=netc-uat.paytm.com,O=One97 Communications Limited,L=Noida,ST=Uttar Pradesh,C=IN</X509SubjectName><X509Certificate>MIIHIjCCBgqgAwIBAgIQDc2bPRcBC8If34pOCuNLXzANBgkqhkiG9w0BAQsFADBNMQswCQYDVQQG&#13;
EwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMScwJQYDVQQDEx5EaWdpQ2VydCBTSEEyIFNlY3Vy&#13;
ZSBTZXJ2ZXIgQ0EwHhcNMTgwMzI4MDAwMDAwWhcNMjAwNjMwMDAwMDAwWjB5MQswCQYDVQQGEwJJ&#13;
TjEWMBQGA1UECBMNVXR0YXIgUHJhZGVzaDEOMAwGA1UEBxMFTm9pZGExJTAjBgNVBAoTHE9uZTk3&#13;
IENvbW11bmljYXRpb25zIExpbWl0ZWQxGzAZBgNVBAMTEm5ldGMtdWF0LnBheXRtLmNvbTCCASIw&#13;
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJS/31I5LXeoJCsLNLEYevfvYT2+/ZdaeasLn1JW&#13;
VnZoTRdtyFsz/4rtmEf7kTmdMUp8ur5z6kgboJvDrSzbEYw4dSpLbcbeRQ//2814Ay/oenYmeXis&#13;
q1A7HUcNgLB+k8u5CdM+OOwEk4qetMnaXb5M+d7IGWf0mAuctr2jfN1jIml2xh3hCQpfKRVEYaWd&#13;
TmM90MwyDaK8aH1GdfIJiWngL2WQW6nWhu5d9Yf3kxmwMd5+4zDcV/AB8aFm5sSooZrf7h4ENE3s&#13;
RBMFmCWfoUR6LU7/C6gbqWEOrYD4/mkR1WWL2QuAcF3n0O2UHzW9d17899915CYIcNLSbr9AsKcC&#13;
AwEAAaOCA9AwggPMMB8GA1UdIwQYMBaAFA+AYRyCMWHVLyjnjUY4tCzhxtniMB0GA1UdDgQWBBRC&#13;
eryYzDMYNmtrjZqGZmQOtWMiVTAdBgNVHREEFjAUghJuZXRjLXVhdC5wYXl0bS5jb20wDgYDVR0P&#13;
AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjBrBgNVHR8EZDBiMC+gLaAr&#13;
hilodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vc3NjYS1zaGEyLWc2LmNybDAvoC2gK4YpaHR0cDov&#13;
L2NybDQuZGlnaWNlcnQuY29tL3NzY2Etc2hhMi1nNi5jcmwwTAYDVR0gBEUwQzA3BglghkgBhv1s&#13;
AQEwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cuZGlnaWNlcnQuY29tL0NQUzAIBgZngQwBAgIw&#13;
fAYIKwYBBQUHAQEEcDBuMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wRgYI&#13;
KwYBBQUHMAKGOmh0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFNIQTJTZWN1cmVT&#13;
ZXJ2ZXJDQS5jcnQwCQYDVR0TBAIwADCCAfYGCisGAQQB1nkCBAIEggHmBIIB4gHgAHYApLkJkLQY&#13;
WBSHuxOizGdwCjw1mAT5G9+443fNDsgN3BAAAAFibFGeCAAABAMARzBFAiBhgMf63e/FBWE+ddij&#13;
BKfgWrG5coSz5XjQp8e2UKqChAIhAO6yW+nOEepKPWKKfKp0SREMmC5A+0pR+4TKrPpekR87AHcA&#13;
b1N2rDHwMRnYmQCkURX/dxUcEdkCwQApBo2yCJo32RMAAAFibFGfOwAABAMASDBGAiEA0sjw7Jxj&#13;
aGP1y1fMA/PZPOoatXu31riGl85NBRMVYkACIQD0t+vUxoc5A+CkG23Ao4tMWXqA1z1MQBM6ordr&#13;
LfRRzgB1ALvZ37wfinG1k5Qjl6qSe0c4V5UKq1LoGpCWZDaOHtGFAAABYmxRnjUAAAQDAEYwRAIg&#13;
QK7PDlyu7xIq/2IBUBLZ7RGEGdRunfYcBGiW1SknZ50CIHBrnCrmamZ39pxEz+LysR3Jr80YOYtb&#13;
F4yFdkKk/VAUAHYAVYHUwhaQNgFK6gubVzxT8MDkOHhwJQgXL6OqHQcT0wwAAAFibFGglgAABAMA&#13;
RzBFAiA01j23Ewp5jKaOJZS8WwPqY2d/XHTEYaoMqt5VI7v7MwIhALJqAyJzH5iMt00EVdKRMycA&#13;
1879oj87Q/hC6i0xOV1tMA0GCSqGSIb3DQEBCwUAA4IBAQCMUlyD2h5y/4VRoA8OGIY22OUiuw+w&#13;
sucSkkwF1GF6vdy4rPYXi8urUQoqWijq4sY1DD+IxEenuhr/CqumdrmeecLoK+R5pDm4Gt6gCxQH&#13;
Kq911vUIL3Qxd3V6Jj0VdHGkyRCmVmGjze/WOq63xyydJWlQUioX+rQjfo/2sn/0vv84FxkVQogR&#13;
Rtgw1mm3mtMF2mLN9lyjGbGOktjKC54Y95ZYvkc9W2NWsLvDhOpNRaGiQp2GEn83J7qEiAbtbhKn&#13;
3y2TPg28A0rBpaYIHFAOTPA+wJFNNAmKim8BPFVJO6EajksMx+R+zgwWtvActuY+M92xzyf97kby&#13;
lwHn/xSu</X509Certificate></X509Data></KeyInfo></Signature></etc:RespPay>	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:13.079	[KafkaListenerAspect] consumer name : consumeReqPay , appId: IssuerSwitch	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:13.079	received data from resp-pay queue ='{"txn":{"note":null,"ts":"2025-09-09T12:18:55","type":"DEBIT","txn_id":"005582957135","org_txn_id":"","ref_id":"257001L02090925121823","ref_url":"","risk_scores":[{"provider":"NPCI","type":"TXNRISK","value":"00999"}]},"resp":{"result":"ACCEPTED","ts":"2025-09-16T12:28:12","ref":{"addr":"34161FA820328E40071FFFC0@608032.iin.npci","type":"PAYER","approval_num":"7420","aval_bal":null,"cust_name":null,"err_code":"052","ledger_bal":null,"masked_acc_num":null,"set_amt":"30.00","set_curr":"INR"},"mer_id":"257001","resp_code":"000"},"msg_id":"ACQ000011894208925","reference_id":2416427420,"db_id":3847808557}'	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.902	className=RequestDataRepository, methodName=save, group=DB, Time elapsed=12 ms	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.890	Inserting id : 3847808557 to db.	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.889	received data from data to database queue ='RequestDataToDatabaseDetails(reqPayKafka=ReqPayKafka(dbId=3847808557, msgId=ACQ000011894208925, orgId=ICIA, msgDate=2025-09-09T12:18:56, txnId=005582957135, transactionType=DEBIT, type=Toll, plazaId=257001, laneId=L02, laneDir=N, readerDate=2025-09-09T12:18:23, tid=E20034120124FF000AC920EB, avc=VC20, tagId=34161FA820929E40071FFDR3, wim=, amount=30.00, acknowledgeTime=2025-09-16T12:28:12, riskScores=[RiskScore(provider=NPCI, type=TXNRISK, value=00999)], payerDetails=PayerDetails(address=34161FA820328E40071FFFC0@608032.iin.npci, currency=INR, name=, type=PERSON), payeeDetails=PayeeDetails(address=720301@iin.npci, name=, type=MERCHANT), merchantDetails=MerchantDetails(geoCode=13.476043,74.7127896, type=Toll, name=Sasthan Toll Plaza, subType=National, readerId=257001, readerVerificationResult=ReaderVerificationResult(signData=, signAuth=VALID, tagVerified=NETC TAG, procRestrictionResult=, vehicleAuth=UNKNOWN, publicKeyCvv=, txnCounter=5485, txnStatus=SUCCESS), parkingDetails=ParkingDetails(floor=, readerId=, entryGateNumber=, exitGateNumber=)), vehicleDetails=VehicleDetails(vehicleClass=VC4, registrationNumber=FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ==, tagStatus=A, issueDate=19-12-2019, excCode=00, bankId=608032, commercialVehicle=F), transactionDetails=TransactionDetails(note=null, refId=257001L02090925121823, refUrl=, orgTxnId=, txnDate=2025-09-09T12:18:55)), id=3847808557)'	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.889	after consuming data with handle	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.889	[KafkaListenerAspect] consumer name : consumeDataToDatabase , appId: NetcEngine	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.834	sending to topic='fastag_issuer_staging_req_pay_staging_new' and data='{"db_id":3847808557,"msg_id":"ACQ000011894208925","org_id":"ICIA","msg_dt":"2025-09-09T12:18:56","txn_id":"005582957135","txn_type":"DEBIT","type":"Toll","plaza_id":"257001","lane_id":"L02","lane_dir":"N","reader_dt":"2025-09-09T12:18:23","tid":"E20034120124FF000AC920EB","avc":"VC20","tag_id":"34161FA820929E40071FFDR3","wim":"","amount":"30.00","ack_dt":"2025-09-16T12:28:12","risk_scores":[{"provider":"NPCI","type":"TXNRISK","value":"00999"}],"payer_dtl":{"add":"34161FA820328E40071FFFC0@608032.iin.npci","curr":"INR","type":"PERSON"},"payee_dtl":{"add":"720301@iin.npci","type":"MERCHANT"},"mer_dtl":{"geo_code":"13.476043,74.7127896","tp":"Toll","name":"Sasthan Toll Plaza","sub_tp":"National","rdr_id":"257001","rdr_ver_res":{"sign_auth":"VALID","tag_ver":"NETC TAG","veh_auth":"UNKNOWN","txn_ctr":"5485","txn_sts":"SUCCESS"},"parking_det":{"floor":"","readerId":"","entryGateNumber":"","exitGateNumber":""}},"veh_dtl":{"veh_cls":"VC4","reg_num":"FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ==","tag_status":"A","iss_dt":"19-12-2019","exc_code":"00","bank_id":"608032","com_veh":"F"},"txn_dtl":{"ref_id":"257001L02090925121823","txn_dt":"2025-09-09T12:18:55"}}'	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.831	Error while decrypting registration number	ERROR	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.831	sending to topic='fastag_issuer_staging_request_data_to_database' and data='KafkaEvent(payload=RequestDataToDatabaseDetails(reqPayKafka=ReqPayKafka(dbId=3847808557, msgId=ACQ000011894208925, orgId=ICIA, msgDate=2025-09-09T12:18:56, txnId=005582957135, transactionType=DEBIT, type=Toll, plazaId=257001, laneId=L02, laneDir=N, readerDate=2025-09-09T12:18:23, tid=E20034120124FF000AC920EB, avc=VC20, tagId=34161FA820929E40071FFDR3, wim=, amount=30.00, acknowledgeTime=2025-09-16T12:28:12, riskScores=[RiskScore(provider=NPCI, type=TXNRISK, value=00999)], payerDetails=PayerDetails(address=34161FA820328E40071FFFC0@608032.iin.npci, currency=INR, name=, type=PERSON), payeeDetails=PayeeDetails(address=720301@iin.npci, name=, type=MERCHANT), merchantDetails=MerchantDetails(geoCode=13.476043,74.7127896, type=Toll, name=Sasthan Toll Plaza, subType=National, readerId=257001, readerVerificationResult=ReaderVerificationResult(signData=, signAuth=VALID, tagVerified=NETC TAG, procRestrictionResult=, vehicleAuth=UNKNOWN, publicKeyCvv=, txnCounter=5485, txnStatus=SUCCESS), parkingDetails=ParkingDetails(floor=, readerId=, entryGateNumber=, exitGateNumber=)), vehicleDetails=VehicleDetails(vehicleClass=VC4, registrationNumber=FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ==, tagStatus=A, issueDate=19-12-2019, excCode=00, bankId=608032, commercialVehicle=F), transactionDetails=TransactionDetails(note=null, refId=257001L02090925121823, refUrl=, orgTxnId=, txnDate=2025-09-09T12:18:55)), id=3847808557))'	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.829	className=AsyncTransactionRepository, methodName=save, group=DB, Time elapsed=13 ms	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.815	received data from resp-pay-xml queue ='{"namespace":"http://npci.org/etc/schema/","header":{"version":"1.0","timeStamp":"2025-09-09T12:18:56","organizationId":"ICIA","messageId":"ACQ000011894208925"},"metaTags":[{"name":"PAYREQSTART","value":"2025-09-09T12:18:55"},{"name":"PAYREQEND","value":"2025-09-09T12:18:55"}],"transaction":{"id":"005582957135","note":null,"referenceId":"257001L02090925121823","referenceUrl":"","timeStamp":"2025-09-09T12:18:55","type":"DEBIT","originalTransactionId":"","riskScores":[{"provider":"NPCI","type":"TXNRISK","value":"00999"}]},"merchant":{"id":"257001","name":"Sasthan Toll Plaza","geoCode":"13.476043,74.7127896","type":"Toll","subtype":"National","lane":{"id":"L02","direction":"N","readerId":""},"parking":{"floor":"","zone":"","slotId":"","readerId":""},"verificationResult":{"tsRead":"2025-09-09T12:18:23","signData":"","signAuth":"VALID","tagVerified":"NETC TAG","procRestrictionResult":"","vehicleAuth":"UNKNOWN","publicKeyCVV":"","txnCounter":"5485","txnStatus":"SUCCESS"}},"vehicle":{"tagId":"34161FA820929E40071FFDR3","vehicleTId":"E20034120124FF000AC920EB","vehicleClassByAvc":"VC20","vehicleWeight":"","vehicleDetails":{"details":[{"name":"VEHICLECLASS","value":"VC4"},{"name":"REGNUMBER","value":"FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ=="},{"name":"ISSUEDATE","value":"19-12-2019"},{"name":"COMVEHICLE","value":"F"},{"name":"BANKID","value":"608032"},{"name":"EXCCODE","value":"00"},{"name":"TAGSTATUS","value":"A"}]}},"payer":{"addr":"34161FA820328E40071FFFC0@608032.iin.npci","name":"","type":"PERSON","amount":{"value":"30.00","curr":"INR"}},"payee":{"addr":"720301@iin.npci","name":"","type":"MERCHANT","amount":null}}'	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.815	[KafkaListenerAspect] consumer name : consumeReqPayXml , appId: NetcEngine	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.768	API : POST:/reqPayService, timeConsumed : 6, responseHttpCode  : 202, appId : null	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
 	Sep 16, 2025 @ 12:28:12.765	sending to topic='fastag_issuer_staging_req_pay_xml' and data='{"namespace":"http://npci.org/etc/schema/","header":{"version":"1.0","timeStamp":"2025-09-09T12:18:56","organizationId":"ICIA","messageId":"ACQ000011894208925"},"metaTags":[{"name":"PAYREQSTART","value":"2025-09-09T12:18:55"},{"name":"PAYREQEND","value":"2025-09-09T12:18:55"}],"transaction":{"id":"005582957135","referenceId":"257001L02090925121823","timeStamp":"2025-09-09T12:18:55","type":"DEBIT","riskScores":[{"provider":"NPCI","type":"TXNRISK","value":"00999"}]},"merchant":{"id":"257001","name":"Sasthan Toll Plaza","geoCode":"13.476043,74.7127896","type":"Toll","subtype":"National","lane":{"id":"L02","direction":"N"},"parking":{},"verificationResult":{"tsRead":"2025-09-09T12:18:23","signAuth":"VALID","tagVerified":"NETC TAG","vehicleAuth":"UNKNOWN","txnCounter":"5485","txnStatus":"SUCCESS"}},"vehicle":{"tagId":"34161FA820929E40071FFDR3","vehicleTId":"E20034120124FF000AC920EB","vehicleClassByAvc":"VC20","vehicleDetails":{"details":[{"name":"VEHICLECLASS","value":"VC4"},{"name":"REGNUMBER","value":"FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ=="},{"name":"ISSUEDATE","value":"19-12-2019"},{"name":"COMVEHICLE","value":"F"},{"name":"BANKID","value":"608032"},{"name":"EXCCODE","value":"00"},{"name":"TAGSTATUS","value":"A"}]}},"payer":{"addr":"34161FA820328E40071FFFC0@608032.iin.npci","type":"PERSON","amount":{"value":"30.00","curr":"INR"}},"payee":{"addr":"720301@iin.npci","type":"MERCHANT"}}'	INFO	 - 	7083c14d-0f77-411b-be95-bf3942041502
	Sep 16, 2025 @ 12:28:12.763	reqPayService from NPCI with data : <?xml version="1.0" encoding="UTF-8"?><etc:ReqPay xmlns:etc="http://npci.org/etc/schema/"><Head msgId="ACQ000011894208925" orgId="ICIA" ts="2025-09-09T12:18:56" ver="1.0"/><Meta><Tag name="PAYREQSTART" value="2025-09-09T12:18:55"/><Tag name="PAYREQEND" value="2025-09-09T12:18:55"/></Meta><Txn id="005582957135" orgTxnId="" refId="257001L02090925121823" refUrl="" ts="2025-09-09T12:18:55" type="DEBIT"><RiskScores><Score provider="NPCI" type="TXNRISK" value="00999"/></RiskScores></Txn><Merchant geoCode="13.476043,74.7127896" id="257001" name="Sasthan Toll Plaza" subtype="National" type="Toll"><Lane direction="N" id="L02" readerId=""/><Parking floor="" readerId="" slotId="" zone=""/><ReaderVerificationResult procRestrictionResult="" publicKeyCVV="" signAuth="VALID" signData="" tagVerified="NETC TAG" tsRead="2025-09-09T12:18:23" txnCounter="5485" txnStatus="SUCCESS" vehicleAuth="UNKNOWN"/></Merchant><Vehicle TID="E20034120124FF000AC920EB" avc="VC20" tagId="34161FA820929E40071FFDR3" wim=""><VehicleDetails><Detail name="VEHICLECLASS" value="VC4"/><Detail name="REGNUMBER" value="FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ=="/><Detail name="TAGSTATUS" value="A"/><Detail name="ISSUEDATE" value="19-12-2019"/><Detail name="EXCCODE" value="00"/><Detail name="BANKID" value="608032"/><Detail name="COMVEHICLE" value="F"/></VehicleDetails></Vehicle><Payer addr="34161FA820328E40071FFFC0@608032.iin.npci" name="" type="PERSON"><Amount curr="INR" value="30.00"/></Payer><Payee addr="720301@iin.npci" name="" type="MERCHANT"/></etc:ReqPay> 	INFO


mysql> select * from transaction where tag_id = '34161FA820929E40071FFDR3' \G;
*************************** 1. row ***************************
                   id: 2416427420
             efkon_id: NULL
               tag_id: 34161FA820929E40071FFDR3
          npci_txn_id: 005582957135
          npci_msg_id: ACQ000011894208925
          acquirer_id: 720301
              veh_tid: E20034120124FF000AC920EB
             plaza_id: 257001
              lane_id: L02
             lane_dir: N
           txn_status: 3
        wallet_status: NULL
 npci_resp_pay_status: 2
   resp_pay_http_code: 202
       rejection_code: 152
       rejection_desc: Transaction tag ID does not exist in our system
        parent_txn_id: NULL
           org_txn_id: 
          npci_org_id: ICIA
                  avc: VC20
                  wim: 
          reader_time: 2025-09-09 12:18:23
   npci_resp_pay_time: 2025-09-16 12:28:13
  wallet_consume_time: NULL
        withdraw_time: NULL
wallet_transaction_id: NULL
        npci_msg_time: 2025-09-09 12:18:56
             ack_time: 2025-09-16 12:28:12
               amount: 30
             txn_type: DEBIT
          customer_id: NULL
 vehicle_details_meta: {"iss_dt": "19-12-2019", "bank_id": "608032", "com_veh": "F", "reg_num": "FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ==", "veh_cls": "VC4", "exc_code": "00", "tag_status": "A"}
   payee_details_meta: {"add": "720301@iin.npci", "name": "", "type": "MERCHANT"}
   payer_details_meta: {"add": "34161FA820328E40071FFFC0@608032.iin.npci", "curr": "INR", "name": "", "type": "PERSON"}
             txn_meta: {"note": null, "ref_id": "257001L02090925121823", "txn_dt": "2025-09-09T12:18:55", "ref_url": "", "org_txn_id": ""}
                 meta: {"utid": "257001_005582957135_30.0_34161FA820929E40071FFDR3_250909121855_D", "source": "NPCI", "netc_engine_id": 3847808557, "npci_rejection_code": "052", "npci_sub_error_code": "{054}"}
      risk_score_meta: [{"type": "TXNRISK", "value": "00999", "provider": "NPCI"}]
        merchant_meta: {"tp": "Toll", "name": "Sasthan Toll Plaza", "rdr_id": "257001", "sub_tp": "National", "geo_code": "13.476043,74.7127896", "parking_det": {"floor": "", "readerId": "", "exitGateNumber": "", "entryGateNumber": ""}, "rdr_ver_res": {"tag_ver": "NETC TAG", "txn_ctr": "5485", "txn_sts": "SUCCESS", "veh_auth": "UNKNOWN", "sign_auth": "VALID", "sign_data": "", "proc_rest_res": "", "public_key_cvv": ""}}
             group_id: NULL
           created_at: 2025-09-16 12:28:13
           updated_at: 2025-09-16 12:28:13
       temp_timestamp: 2025-09-16 12:28:12
                 type: 1
      settlement_time: NULL
1 row in set (0.00 sec)

ERROR: 
No query specified

