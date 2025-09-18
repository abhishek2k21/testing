

D
Discover


 
New

Save

Open

Share

Inspect




KQL



Today
Show dates


Refresh


+ Add filter
 

fastagstaging_fastag-issuer-switch_application-*




Filter by type
0
Selected fields

level

Remove

message

Remove

req.id

Remove
Available fields


_id

Add

_index

Add

_score

Add

_type

Add

@timestamp

Add

@version

Add

endOfBatch

Add

fields.hostname

Add

hostname

Add

instant.epochSecond

Add

instant.nanoOfSecond

Add

log.file.path

Add

loggerFqcn

Add

loggerName

Add

pids

Add

tag.env

Add

tag.logtype

Add

tag.service_name

Add

thread

Add

threadId

Add

threadPriority

Add

thrown.cause.commonElementCount

Add

thrown.cause.extendedStackTrace

Add

thrown.cause.localizedMessage

Add

thrown.cause.message

Add

thrown.cause.name

Add

thrown.commonElementCount

Add

thrown.extendedStackTrace

Add

thrown.localizedMessage

Add

thrown.message

Add

thrown.name

Add

time

Add

uuid

Add
 
150 hits
Sep 18, 2025 @ 00:00:00.000 - Sep 18, 2025 @ 23:59:59.999


Documents
Time	message	level	req.id
	Sep 18, 2025 @ 12:14:10.669	url : https://wallet-staging.paytmbank.com/wallet-web/internal/fastageventRegister, method : POST, responseBody : WalletEventRegisterResponse(status=SUCCESS, statusCode=FTE_000, statusMessage=Fastag event updated successfully), httpStatus : 200 OK	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.669	[processRegisterWalletEvent] Response [Wallet Event Register] for custId:1000428916 | {"status":"SUCCESS","statusCode":"FTE_000","statusMessage":"Fastag event updated successfully"}	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.624	Request [Wallet Event Register] for custId: 1000428916 | {"request":{"custID":1000428916,"events":["credit"],"register":true},"platformName":"PayTM","operationType":"FASTAG_EVENT_REGISTER"}	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.624	url : https://wallet-staging.paytmbank.com/wallet-web/internal/fastageventRegister, method : POST, requestBody : WalletEventRegisterRequest(request=WalletEventRegisterRequest.Request(customerId=1000428916, events=[credit], register=true), platformName=PayTM, operationType=FASTAG_EVENT_REGISTER)	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.623	URL [Wallet Event Register]: https://wallet-staging.paytmbank.com/wallet-web/internal/fastageventRegister	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.622	className=TagMasterRepository, methodName=findByCustomerIdAndIssuanceStatusIn, group=DB, Time elapsed=4 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.622	Total tags: 1 | No. of Tags with same exception code in DB: 1 | No. of filtered tag sent for operation: 0 | custId: 1000428916	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.616	[updateTagStateAndRegisterEventBasedOnDebitTxnResult] Blacklisting the tag with epcId: 34161FA820328E4002A37C60 because pending dues > threshold + SD. source:ONLINE_TOLL_TXN 	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.616	Mark tagId: 34161FA820328E4002A37C60 | ExceptionCode: BLACKLISTED | Operation: ADD | comment: Insufficient Balance | Pending dues more than sum of user threshold and SD | source: PENDING_DUES_ONLINE_TXN | custId: 1000428916	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.616	[updateTagStateAndRegisterEventBasedOnDebitTxnResult] Mark low Balance for transId: 2416427424, custId: 1000428916, source:ONLINE_TOLL_TXN	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.616	Mark custId: 1000428916 | ExceptionCode: LOWBALANCE | Operation: ADD | comment: Insufficient Balance | DEBIT TOLL payment due | source: ONLINE_TOLL_TXN	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.616	className=TagMasterRepository, methodName=insertBLMetaKeyIntoTag, group=DB, Time elapsed=11 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.616	Total tags: 1 | No. of Tags with same exception code in DB: 1 | No. of filtered tag sent for operation: 0 | custId: 1000428916	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.600	Transaction Entity with messageKey : 2416427424, topic : fastag_issuer_staging_fastag-issuer-preprocess-transaction	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.600	className=TransactionMasterRepository, methodName=updateWalletFinalStatus, group=DB, Time elapsed=10 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.600	[CommonProducer.produce] KafkaProducerEvent is KafkaProducerEvent(payload=2416427424, type=Transaction),topic is fastag_issuer_staging_fastag-issuer-preprocess-transaction, key is 2416427424	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.589	[consultFundsAndDebitTransaction] debitTransactionResult is :DebitTransactionResult(isDebitTransactionSuccessful=false, markToLowBalance=true, sendSms=false, sendChat=false, walletStatus=WALLET_PENDING, withdrawTime=null, settlementTime=null, walletTransactionId=null, transactionId=2416427424, walletOrderId=FI-2416427424, reason=Insufficient Balance | DEBIT TOLL payment due, statusCode=null, isRealtimeReplenishCustomer=true, npciTransactionType=TOLL, isKYCExpired=false, isRiskDebitFreeze=false, isPhoneNumberMissing=false, unHandledWithdrawErrorCode=null, markTagToBlacklist=true, markTagToBlacklistDueToPendingDues=true, isWalletDebitTransaction=null)	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.583	[checkBalanceForTransaction] transId:2416427424 | custId: 1000428916 | Is real time replenish customer: true	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.582	[checkBalanceForTransaction] Response [Check Balance] for custId:1000428916, transId:2416427424, {"requestGuid":null,"orderId":null,"status":"SUCCESS","statusCode":"SUCCESS","statusMessage":"SUCCESS","response":{"totalBalance":20.0,"paytmWalletBalance":10.0,"otherSubWalletBalance":10.0,"walletGrade":"Min Kyc","subWalletDetailsList":[{"id":1,"displayName":"Wallet","balance":10.0,"expiry":null,"walletType":"USER","subWalletType":0},{"id":3,"displayName":"Fastag","balance":10.0,"expiry":"30-06-2030","walletType":"USER","subWalletType":6}],"embargoApplied":false,"userWalletFreezeDetails":{"freezeStatus":0,"freezeReason":"User Freezed","active":true,"mobileNumberLinked":true,"walletRbiState":"PAYTM_BASIC_PLUS","freezeCode":null,"freezeDescription":null,"onlyFullKycEligibleUser":false}}}	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.580	url : https://wallet-staging.paytmbank.com/service/v2/checkUserBalance, method : POST, responseBody : CheckBalanceResponse(requestGuid=null, orderId=null, status=SUCCESS, statusCode=SUCCESS, statusMessage=SUCCESS, response=CheckBalanceResponse.Response(totalBalance=20.0, paytmWalletBalance=10.0, otherSubWalletBalance=10.0, walletGrade=Min Kyc, subWalletDetailsList=[SubWalletDetail(id=1, displayName=Wallet, balance=10.0, expiry=null, walletType=USER, subWalletType=0), SubWalletDetail(id=3, displayName=Fastag, balance=10.0, expiry=30-06-2030, walletType=USER, subWalletType=6)], embargoApplied=false, userWalletFreezeDetail=CheckBalanceResponse.UserWalletFreezeDetail(freezeStatus=0, freezeReason=User Freezed, active=true, mobileNumberLinked=true, walletRbiState=PAYTM_BASIC_PLUS, freezeCode=null, freezeDescription=null, onlyFullKycEligibleUser=false))), httpStatus : 200 OK	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.228	Request [Check Balance] for custId:1000428916, {"request":{"isDetailInfo":"YES","isClubSubwalletsRequired":"NO","mid":"TESGPS43865301954522","userWalletFreezeDetailsRequired":true,"userBlockDetailsRequired":true}}	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.228	url : https://wallet-staging.paytmbank.com/service/v2/checkUserBalance, method : POST, requestBody : CheckBalanceRequest(request=CheckBalanceRequest.Request(isDetailInfo=YES, isClubSubwalletsRequired=NO, merchantId=TESGPS43865301954522, userWalletFreezeDetailsRequired=true, userBlockDetailsRequired=true))	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:10.228	URL [Check Balance]: https://wallet-staging.paytmbank.com/service/v2/checkUserBalance	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.332	[CommonProducer.produce] KafkaProducerEvent is KafkaProducerEvent(payload=2416427424, type=Transaction),topic is fastag_issuer_staging_fastag-issuer-preprocess-transaction, key is 2416427424	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.331	className=TransactionMasterRepository, methodName=updateNpciResponse, group=DB, Time elapsed=10 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.331	Transaction Entity with messageKey : 2416427424, topic : fastag_issuer_staging_fastag-issuer-preprocess-transaction	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.320	className=TransactionMasterRepository, methodName=findById, group=DB, Time elapsed=17 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.301	[NPCIResponseConsumer.consume] Consumed message is {"res_type_enum":"RESPPAY","response_data":"{\"ts\":\"2025-09-18T12:14:09\",\"reference_id\":2416427424,\"http_code\":\"202\"}"},topic is fastag_issuer_staging_response_queue ,partition is 2 ,offset is 6	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.237	[KafkaListenerAspect] consumer name : consume_npci_response , appId: NetcEngine	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.228	I/O Error in checkBalance API with url : https://wallet-staging.paytmbank.com/service/v2/checkUserBalance | Request: {"request":{"isDetailInfo":"YES","isClubSubwalletsRequired":"NO","mid":"TESGPS43865301954522","userWalletFreezeDetailsRequired":true,"userBlockDetailsRequired":true}} | Exception: 	ERROR	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.220	Request [Check Balance] for custId:1000428916, {"request":{"isDetailInfo":"YES","isClubSubwalletsRequired":"NO","mid":"TESGPS43865301954522","userWalletFreezeDetailsRequired":true,"userBlockDetailsRequired":true}}	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.220	url : https://wallet-staging.paytmbank.com/service/v2/checkUserBalance, method : POST, requestBody : CheckBalanceRequest(request=CheckBalanceRequest.Request(isDetailInfo=YES, isClubSubwalletsRequired=NO, merchantId=TESGPS43865301954522, userWalletFreezeDetailsRequired=true, userBlockDetailsRequired=true))	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.219	URL [Check Balance]: https://wallet-staging.paytmbank.com/service/v2/checkUserBalance	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.217	Invalid Security amount | tagId: 34161FA820328E4002A37C60	ERROR	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.217	For flow: checkBalanceForTransaction Should use route : true	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.216	className=TagMasterRepository, methodName=findByCustomerIdAndIssuanceStatusIn, group=DB, Time elapsed=5 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.211	className=CustomerInfoMasterRepository, methodName=findByCustomerId, group=DB, Time elapsed=2 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.207	className=TagMasterRepository, methodName=findByEpcId, group=DB, Time elapsed=3 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.205	className=CashbackMasterRepository, methodName=findPlazaActiveScheme, group=DB, Time elapsed=4 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.205	initiateCashback | Active cashback scheme not found | NPCI TxnID: 00558295713515 | PlazaID: 257001 | VehicleClass: 20 | CustomerId: 1000428916	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.204	className=CustomerInfoMasterRepository, methodName=findByCustomerId, group=DB, Time elapsed=4 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.199	className=TransactionMasterRepository, methodName=updateWalletProcessingStatus, group=DB, Time elapsed=80 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.199	[CommonProducer.produce] KafkaProducerEvent is KafkaProducerEvent(payload=2416427424, type=Transaction),topic is fastag_issuer_staging_fastag-issuer-preprocess-transaction, key is 2416427424	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.199	className=PlazaInfoMasterRepository, methodName=findByNpciTollIdAndIsActive, group=DB, Time elapsed=71 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.199	initiateCashback | Active Plaza not present | PlazaId: 257001 | TxnId: 2416427424	WARN	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.199	[processWalletTransaction] Updated wallet processing status for transId: 2416427424, custId: 1000428916	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.199	Transaction Entity with messageKey : 2416427424, topic : fastag_issuer_staging_fastag-issuer-preprocess-transaction	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.127	className=TagMasterRepository, methodName=findByEpcId, group=DB, Time elapsed=2 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.124	className=SettlementMasterRepository, methodName=findByNpciTxnIdAndPlazaIdAndType, group=DB, Time elapsed=5 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.118	className=TransactionMasterRepository, methodName=findById, group=DB, Time elapsed=16 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.117	className=TransactionMasterRepository, methodName=findById, group=DB, Time elapsed=15 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.116	Given tag 34161FA820328E4002A37C60 doesn't belong to a corporate customer. Hence skipping mapping transaction 2416427424 to a group for it	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.109	[SwitchTransactionConsumer.consumerSwitchTransaction] Consumed message is TransactionKafkaPayload(transaction=Transaction(id=2416427424, tagId=34161FA820328E4002A37C60, npciTransactionId=00558295713515, npciMsgId=ACQ000011894208925, acquirerId=720301, vehTid=E20034120124FF000AC920EB, plazaId=257001, laneId=L02, laneDir=N, transactionStatus=REJECTED, walletStatus=WALLET_TO_BE_PROCESSED, npciRespPayStatus=null, resPayHttpCode=null, rejectionDesc=Time of tag being put in blacklist minus transaction (Reader date time)  greater than 20 minutes, rejectionCode=081, parentTxnId=null, orgTxnId=, npciOrgId=ICIA, avc=VC20, wim=, readerTime=2025-09-18T12:11:23, npciResPayTime=null, withdrawTime=null, settlementTime=null, walletConsumeTime=null, walletTransactionId=null, npciMsgTime=2025-09-09T12:18:56, ackTime=2025-09-18T12:12:07, amount=90.0, txnType=DEBIT, customerId=1000428916, vehicleDetailsMeta=VehicleDetails(vehicleClass=VC4, tagStatus=A, issueDate=19-12-2019, excCode=00, bankId=608032, comVehicle=F), payeeDetailsMeta=PayeeDetails(address=720301@iin.npci, type=MERCHANT), payerDetailsMeta=PayerDetails(address=34161FA820328E40071FFFC0@608032.iin.npci, type=PERSON, currency=INR), txnMeta=TransactionDetails(note=null, refId=257001L02090925121823, refUrl=, orgTxnId=, transactionDateTime=2025-09-09T12:18:55), meta=TransactionMeta(parentTollTransactionId=null, parentReaderTime=null, netcEngineId=3847808565, utid=257001_00558295713515_90.0_34161FA820328E4002A37C60_250909121855_D, source=NPCI, cancelTxnJobId=null, npciRejectionCode=null, npciSubErrorCode=null, bulkDebitRetryJobId=null, adjustedCashback=null, remainingDebt=null, reportingCodes=null, closestTransactionId=null, isWalletTransaction=null, walletOrderId=null, additionalProperties={}), riskScoreMeta=[RiskScore(provider=NPCI, type=TXNRISK, value=00999)], merchantMeta=MerchantDetails(name=Sasthan Toll Plaza, geoCode=13.476043,74.7127896, type=Toll, subType=National, readerId=257001, readerVerificationResult=ReaderVerificationResult(signData=, signAuth=VALID, tagVerified=NETC TAG, procRestrictionResult=, vehicleAuth=UNKNOWN, publicKeyCvv=, txnCounter=5485, txnStatus=SUCCESS), parkingDetails=ParkingDetails(floor=, readerId=, entryGateNumber=, exitGateNumber=)), vehicleGroupId=null, type=TOLL, createdAt=Thu Sep 18 12:12:08 IST 2025, updatedAt=Thu Sep 18 12:12:08 IST 2025, ignoreIngestInES=true), isAccounting=true),topic is fastag_issuer_staging_generic_transaction ,partition is 2 ,offset is 10	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.109	Processing transaction for vehicle group : id 2416427424, tagId 34161FA820328E4002A37C60, transaction type DEBIT, reader time 2025-09-18T12:11:23, amount 90.0, createdAt 2025-09-18T12:12:08.024+0530, is_accounting true	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.103	[KafkaListenerAspect] consumer name : consumer_switch_transaction , appId: IssuerSwitch	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.101	[WalletTransaction.consume] Consumed message is {"trans_id":2416427424},topic is fastag_issuer_staging_wallet_transaction ,partition is 0 ,offset is 1	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.101	[CashbackConsumer.consume] Consumed message is {"trans_id":2416427424} | Topic: fastag_issuer_staging_wallet_transaction | Partition: 0 | Offset: 1	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.074	Details of RestTemplate Exception | StatusCode : 400 BAD_REQUEST | RawStatusCode : 400 | Message : 400 : "{"status":"failure","response":{"message":"Template does not exist","errorCode":"1005","data":null}}" | StatusText :  | responseBody: {"status":"failure","response":{"message":"Template does not exist","errorCode":"1005","data":null}}	ERROR	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.074	[BankSmsService.sendSms] Error in sending sms for customerId: 1000428916, tollTxnId: null, exception: 	ERROR	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.073	[KafkaListenerAspect] consumer name : transactionCashbackConsumer , appId: IssuerSwitch	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.073	[KafkaListenerAspect] consumer name : consume_wallet_transaction , appId: IssuerSwitch	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.039	[TransactionProducer.produceTransactionMessage] message is TransactionKafkaPayload(transaction=Transaction(id=2416427424, tagId=34161FA820328E4002A37C60, npciTransactionId=00558295713515, npciMsgId=ACQ000011894208925, acquirerId=720301, vehTid=E20034120124FF000AC920EB, plazaId=257001, laneId=L02, laneDir=N, transactionStatus=REJECTED, walletStatus=WALLET_TO_BE_PROCESSED, npciRespPayStatus=null, resPayHttpCode=null, rejectionDesc=Time of tag being put in blacklist minus transaction (Reader date time)  greater than 20 minutes, rejectionCode=081, parentTxnId=null, orgTxnId=, npciOrgId=ICIA, avc=VC20, wim=, readerTime=2025-09-18T12:11:23, npciResPayTime=null, withdrawTime=null, settlementTime=null, walletConsumeTime=null, walletTransactionId=null, npciMsgTime=2025-09-09T12:18:56, ackTime=2025-09-18T12:12:07, amount=90.0, txnType=DEBIT, customerId=1000428916, vehicleDetailsMeta=VehicleDetails(vehicleClass=VC4, tagStatus=A, issueDate=19-12-2019, excCode=00, bankId=608032, comVehicle=F), payeeDetailsMeta=PayeeDetails(address=720301@iin.npci, type=MERCHANT), payerDetailsMeta=PayerDetails(address=34161FA820328E40071FFFC0@608032.iin.npci, type=PERSON, currency=INR), txnMeta=TransactionDetails(note=null, refId=257001L02090925121823, refUrl=, orgTxnId=, transactionDateTime=2025-09-09T12:18:55), meta=TransactionMeta(parentTollTransactionId=null, parentReaderTime=null, netcEngineId=3847808565, utid=257001_00558295713515_90.0_34161FA820328E4002A37C60_250909121855_D, source=NPCI, cancelTxnJobId=null, npciRejectionCode=null, npciSubErrorCode=null, bulkDebitRetryJobId=null, adjustedCashback=null, remainingDebt=null, reportingCodes=null, closestTransactionId=null, isWalletTransaction=null, walletOrderId=null, additionalProperties={}), riskScoreMeta=[RiskScore(provider=NPCI, type=TXNRISK, value=00999)], merchantMeta=MerchantDetails(name=Sasthan Toll Plaza, geoCode=13.476043,74.7127896, type=Toll, subType=National, readerId=257001, readerVerificationResult=ReaderVerificationResult(signData=, signAuth=VALID, tagVerified=NETC TAG, procRestrictionResult=, vehicleAuth=UNKNOWN, publicKeyCvv=, txnCounter=5485, txnStatus=SUCCESS), parkingDetails=ParkingDetails(floor=, readerId=, entryGateNumber=, exitGateNumber=)), vehicleGroupId=null, type=TOLL, createdAt=Thu Sep 18 12:12:08 IST 2025, updatedAt=Thu Sep 18 12:12:08 IST 2025, ignoreIngestInES=true), isAccounting=true),topic is fastag_issuer_staging_generic_transaction	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.036	className=DisputeTransactionsRepositoryMaster, methodName=save, group=DB, Time elapsed=14 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.036	Got name: dispute.enabled, value: true	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.031	onPostInsert Type:com.paytm.issuer.database.mysql.entities.DisputeTransactions , Object:com.paytm.issuer.database.mysql.entities.DisputeTransactions@33283d3b	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.018	[TransactionProducer.produce] message is WalletTransactionPayload(transactionId=2416427424),topic is fastag_issuer_staging_wallet_transaction	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.017	[End] [update rejection code], npci msg id: ACQ000011894208925	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.014	[CommonProducer.produce] KafkaProducerEvent is KafkaProducerEvent(payload=2416427424, type=Transaction),topic is fastag_issuer_staging_fastag-issuer-preprocess-transaction, key is 2416427424	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.014	className=TransactionMasterRepository, methodName=updateRejectionCodeAndWalletStatusOnTxn, group=DB, Time elapsed=10 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.014	Transaction Entity with messageKey : 2416427424, topic : fastag_issuer_staging_fastag-issuer-preprocess-transaction	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.003	[Start] [update rejection code], npci msg id: ACQ000011894208925	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.002	className=TransactionMasterRepository, methodName=findByTagIdAndTxnTypeInAndPlazaIdAndReaderTimeBetween, group=DB, Time elapsed=84 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.913	[TransactionProducer.produce] message is RespPay(msgId=ACQ000011894208925, transactionReferenceId=2416427424, txn=RespPay.Txn(txnId=00558295713515, note=null, orgTxnId=, refId=257001L02090925121823, refUrl=, ts=2025-09-09T12:18:55, type=DEBIT, riskScores=[RespPay.Txn.RiskScore(provider=NPCI, type=TXNRISK, value=00999)]), resp=RespPay.Resp(merchantId=257001, respCode=000, result=ACCEPTED, ts=2025-09-18T12:14:08, ref=RespPay.Resp.Ref(addr=34161FA820328E40071FFFC0@608032.iin.npci, approvalNum=7424, avalBal=null, customerName=null, errCode=081, ledgerBal=null, maskedAccountNumber=null, settAmount=90.00, settCurrency=INR, type=PAYER)), netcEngineId=3847808565),topic is fastag_issuer_staging_resp_pay_staging	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.902	Validation result for inserted transaction id: 2416427424 of type: TOLL, Error message: BLKLST_TAG, npci msg id: ACQ000011894208925	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.901	className=TagStateHistoryMasterRepository, methodName=saveAll, group=DB, Time elapsed=66 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.848	TagStateHistory Entity with messageKey : 680845210, topic : fastag_issuer_staging_fastag-issuer-preprocess-tag-state-history	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.848	onPostUpdate Type:com.paytm.issuance.commons.db.entity.TagStateHistory , Object:TagStateHistory(id=680845210, tagId=34161FA820328E4002A37C60, tag=null, issuanceStatus=ACTIVE, createdAt=Thu Sep 18 12:13:08 IST 2025, updatedAt=Thu Sep 18 12:14:08 IST 2025, tagFromIssuanceState=ACTIVE, agentId=null, tagAttrTo=null, tagAttrFrom=null, eventType=NPCI_STATE_CHANGE, metaData={npci_update_time=2025-09-16 14:51:43.0, npci_state_action=1, npci_state=2, npci_state_http_code=000, tag_from_npci_state=01,03, tag_to_npci_state=01,03, comment=BlackListed Tag, source=ONLINE_TOLL_TXN})	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.848	[CommonProducer.produce] KafkaProducerEvent is KafkaProducerEvent(payload=680845210, type=TagStateHistory),topic is fastag_issuer_staging_fastag-issuer-preprocess-tag-state-history, key is 680845210	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.844	HHH000502: The [tag] property of the [com.paytm.issuance.commons.db.entity.TagStateHistory] entity was modified, but it won't be updated because the property is immutable.	WARN	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.835	className=TagMasterRepository, methodName=updateNpciStatesAndTimeOfTag, group=DB, Time elapsed=12 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.822	className=TagStateHistoryMasterRepository, methodName=save, group=DB, Time elapsed=25 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.817	TagStateHistory Entity with messageKey : 680845210, topic : fastag_issuer_staging_fastag-issuer-preprocess-tag-state-history	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.817	onPostUpdate Type:com.paytm.issuance.commons.db.entity.TagStateHistory , Object:TagStateHistory(id=680845210, tagId=34161FA820328E4002A37C60, tag=null, issuanceStatus=ACTIVE, createdAt=Thu Sep 18 12:13:08 IST 2025, updatedAt=Thu Sep 18 12:14:08 IST 2025, tagFromIssuanceState=ACTIVE, agentId=null, tagAttrTo=null, tagAttrFrom=null, eventType=NPCI_STATE_CHANGE, metaData={npci_update_time=2025-09-16 14:51:43.0, npci_state_action=1, npci_state=2, npci_state_http_code=000, tag_from_npci_state=01,03, tag_to_npci_state=01,03, comment=BlackListed Tag, source=ONLINE_TOLL_TXN})	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.817	[CommonProducer.produce] KafkaProducerEvent is KafkaProducerEvent(payload=680845210, type=TagStateHistory),topic is fastag_issuer_staging_fastag-issuer-preprocess-tag-state-history, key is 680845210	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.817	url : https://notification-ite.paytmbank.com/v2/notification, method : POST, requestBody : com.paytm.issuer.models.SmsRequest@6513456d	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.816	SMS url : https://notification-ite.paytmbank.com/v2/notification	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.816	Request [Sms Request]: com.paytm.issuer.models.SmsRequest@6513456d	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.815	className=TagMasterRepository, methodName=findByTagSequenceNumber, group=DB, Time elapsed=7 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.814	HHH000502: The [tag] property of the [com.paytm.issuance.commons.db.entity.TagStateHistory] entity was modified, but it won't be updated because the property is immutable.	WARN	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.807	[BankSmsSwitchConsumer.consume] Consumed message is BankSmsPayload(transactionId=null, templateId=6240, tagSequanceNumber=10334819),topic is fastag_issuer_staging_switch_bank_sms_notification ,partition is 0 ,offset is 0	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.803	[KafkaListenerAspect] consumer name : consume_bank_sms_switch , appId: IssuerSwitch	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.796	url : http://middleware-banktest-automation.eks-mwite1/genericMock2/Svs-IssuerNPCI/reqMngException, method : POST, responseBody : RespMngException(result=SUCCESS, respCode=000, totalRequestCount=1, successRequestCount=1, tagEntries=[RespMngException.TagEntry(refId=13, operation=ADD, tagId=34161FA820328E4002A37C60, result=SUCCESS, errCode=000, originalErrCode=000, errCodeMapping=null)], tagUpdationTimestamp=2025-09-16T14:51:43), httpStatus : 200 OK	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.796	Response [Manage tag operations]: RespMngException(result=SUCCESS, respCode=000, totalRequestCount=1, successRequestCount=1, tagEntries=[RespMngException.TagEntry(refId=13, operation=ADD, tagId=34161FA820328E4002A37C60, result=SUCCESS, errCode=000, originalErrCode=000, errCodeMapping=null)], tagUpdationTimestamp=2025-09-16T14:51:43)	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.739	url : http://middleware-banktest-automation.eks-mwite1/genericMock2/Svs-IssuerNPCI/reqMngException, method : POST, requestBody : ManageTagOperationsData(customerId=1000428916, tagOperationList=[TagOperation(refId=680845210, operation=ADD, tagId=34161FA820328E4002A37C60, exceptionCode=01)])	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.738	Request [Manage tag operations]: {"customer_id":1000428916,"tag_entry_list":[{"reference_id":680845210,"operation":"ADD","tag_id":"34161FA820328E4002A37C60","exception_code":"01"}]}	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.734	[TransactionProducer.produce] message is BankSmsPayload(transactionId=null, templateId=6240, tagSequanceNumber=10334819),topic is fastag_issuer_staging_switch_bank_sms_notification	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.732	Details of RestTemplate Exception | StatusCode : 400 BAD_REQUEST | RawStatusCode : 400 | Message : 400 : "{"status":"failure","message":"I/O error on POST request for \"https://issuer-npci-active-active-nlb-cf19ecdb70678dbd.elb.ap-south-1.amazonaws.com/reqDetails\": connect timed out; nested exception is java.net.SocketTimeoutException: connect timed out","responseCode":0}" | StatusText :  | responseBody: {"status":"failure","message":"I/O error on POST request for \"https://issuer-npci-active-active-nlb-cf19ecdb70678dbd.elb.ap-south-1.amazonaws.com/reqDetails\": connect timed out; nested exception is java.net.SocketTimeoutException: connect timed out","responseCode":0}	ERROR	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.732	Error in getVehicleDetails API with url :http://middleware-banktest-automation.eks-mwite1/genericMock2/Svs-IssuerNPCI/reqDetails?msgId=GGBC-MOCK	ERROR	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.732	[TagService.syncGovtBlacklistFromNpci] Error while syncing Govt Blacklist Exception from NPCI : Faced error in req Details NETC	ERROR	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.616	className=TagStateHistoryMasterRepository, methodName=saveAll, group=DB, Time elapsed=87 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.616	[TagService.syncGovtBlacklistFromNpci] Syncing Govt Blacklist Exception for tag: Tag(id=23320337, tagSequenceNumber=10334819, epcId=34161FA820328E4002A37C60, tId=tid1757936690838, signature=null, assignedTo=null, inventoryStatus=ISSUED, issuanceStatus=ACTIVE, productId=null, vehicleClass=VC20, vehicleType=null, customerId=1000428916, leadId=null, distributionChannelId=null, orderId=null, issueDate=null, tagNpciStateActive=false, tagNpciStateBlacklist=true, tagNpciStateExempt=false, tagNpciStateLowBalance=true, tagNpciStateGovtBlacklist=false, tagNpciStateInvalidCarriage=false, tagNpciStateClosedReplaced=false, createdAt=2025-09-15 17:14:51.0, updatedAt=2025-09-18 12:04:00.0, assignedFrom=null, batchId=null, sequenceNumber=null, npciStateUpdateTime=2025-09-16T14:51:43, encryptedCustomerId=null, tvc=null, tagMetaInfo={remove_from_bl_if_dues_cleared=Y}, leadStatus=null, isCorporate=false, issuanceSource=null, initAt=null, closedDate=null, tagStateHistoryMetaData={})	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.616	Hitting request to Netc Engine: http://middleware-banktest-automation.eks-mwite1/genericMock2/Svs-IssuerNPCI/reqDetails?msgId=GGBC-MOCK ,  Request body: ReqDetails(tagId=34161FA820328E4002A37C60, vehicleTId=null)	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.616	url : http://middleware-banktest-automation.eks-mwite1/genericMock2/Svs-IssuerNPCI/reqDetails?msgId=GGBC-MOCK, method : POST, requestBody : ReqDetails(tagId=34161FA820328E4002A37C60, vehicleTId=null)	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.610	TagStateHistory Entity with messageKey : 680845210, topic : fastag_issuer_staging_fastag-issuer-preprocess-tag-state-history	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.610	onPostUpdate Type:com.paytm.issuance.commons.db.entity.TagStateHistory , Object:TagStateHistory(id=680845210, tagId=34161FA820328E4002A37C60, tag=null, issuanceStatus=ACTIVE, createdAt=Thu Sep 18 12:13:08 IST 2025, updatedAt=Thu Sep 18 12:13:08 IST 2025, tagFromIssuanceState=ACTIVE, agentId=null, tagAttrTo=null, tagAttrFrom=null, eventType=NPCI_STATE_CHANGE, metaData={npci_state_action=1, npci_state=BLACKLISTED, tag_from_npci_state=01,03, tag_to_npci_state=01,03, comment=BlackListed Tag, source=ONLINE_TOLL_TXN})	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.610	[CommonProducer.produce] KafkaProducerEvent is KafkaProducerEvent(payload=680845210, type=TagStateHistory),topic is fastag_issuer_staging_fastag-issuer-preprocess-tag-state-history, key is 680845210	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.562	Kafka version: 3.1.2	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.562	Kafka commitId: f8c67dc3ae0a3265	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.562	Kafka version: 3.1.2	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.562	Kafka commitId: f8c67dc3ae0a3265	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.562	Kafka startTimeMs: 1758177788562	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.562	Kafka startTimeMs: 1758177788562	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.560	[Producer clientId=producer-2] Instantiated an idempotent producer.	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.560	[Producer clientId=producer-2] Instantiated an idempotent producer.	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.557	ProducerConfig values: 
	acks = -1
	batch.size = 16384
	bootstrap.servers = [10.100.241.139:9092, 10.100.241.140:9092, 10.100.241.141:9092]
	buffer.memory = 33554432
	client.dns.lookup = use_all_dns_ips
	client.id = producer-2
	compression.type = none
	connections.max.idle.ms = 540000
	delivery.timeout.ms = 120000
	enable.idempotence = true
	interceptor.classes = []
	key.serializer = class org.apache.kafka.common.serialization.StringSerializer
	linger.ms = 0
	max.block.ms = 60000
	max.in.flight.requests.per.connection = 5
	max.request.size = 1048576
	metadata.max.age.ms = 300000
	metadata.max.idle.ms = 300000
	metric.reporters = []
	metrics.num.samples = 2
	metrics.recording.level = INFO
	metrics.sample.window.ms = 30000
	partitioner.class = class org.apache.kafka.clients.producer.internals.DefaultPartitioner
	receive.buffer.bytes = 32768
	reconnect.backoff.max.ms = 1000
	reconnect.backoff.ms = 50
	request.timeout.ms = 30000
	retries = 5
	retry.backoff.ms = 500
	sasl.client.callback.handler.class = null
	sasl.jaas.config = null
	sasl.kerberos.kinit.cmd = /usr/bin/kinit
	sasl.kerberos.min.time.before.relogin = 60000
	sasl.kerberos.service.name = null
	sasl.kerberos.ticket.renew.jitter = 0.05
	sasl.kerberos.ticket.renew.window.factor = 0.8
	sasl.login.callback.handler.class = null
	sasl.login.class = null
	sasl.login.connect.timeout.ms = null
	sasl.login.read.timeout.ms = null
	sasl.login.refresh.buffer.seconds = 300
	sasl.login.refresh.min.period.seconds = 60
	sasl.login.refresh.window.factor = 0.8
	sasl.login.refresh.window.jitter = 0.05
	sasl.login.retry.backoff.max.ms = 10000
	sasl.login.retry.backoff.ms = 100
	sasl.mechanism = GSSAPI
	sasl.oauthbearer.clock.skew.seconds = 30
	sasl.oauthbearer.expected.audience = null
	sasl.oauthbearer.expected.issuer = null
	sasl.oauthbearer.jwks.endpoint.refresh.ms = 3600000
	sasl.oauthbearer.jwks.endpoint.retry.backoff.max.ms = 10000
	sasl.oauthbearer.jwks.endpoint.retry.backoff.ms = 100
	sasl.oauthbearer.jwks.endpoint.url = null
	sasl.oauthbearer.scope.claim.name = scope
	sasl.oauthbearer.sub.claim.name = sub
	sasl.oauthbearer.token.endpoint.url = null
	security.protocol = PLAINTEXT
	security.providers = null
	send.buffer.bytes = 131072
	socket.connection.setup.timeout.max.ms = 30000
	socket.connection.setup.timeout.ms = 10000
	ssl.cipher.suites = null
	ssl.enabled.protocols = [TLSv1.2, TLSv1.3]
	ssl.endpoint.identification.algorithm = https
	ssl.engine.factory.class = null
	ssl.key.password = null
	ssl.keymanager.algorithm = SunX509
	ssl.keystore.certificate.chain = null
	ssl.keystore.key = null
	ssl.keystore.location = null
	ssl.keystore.password = null
	ssl.keystore.type = JKS
	ssl.protocol = TLSv1.3
	ssl.provider = null
	ssl.secure.random.implementation = null
	ssl.trustmanager.algorithm = PKIX
	ssl.truststore.certificates = null
	ssl.truststore.location = null
	ssl.truststore.password = null
	ssl.truststore.type = JKS
	transaction.timeout.ms = 60000
	transactional.id = null
	value.serializer = class org.springframework.kafka.support.serializer.JsonSerializer
	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.557	ProducerConfig values: 
	acks = -1
	batch.size = 16384
	bootstrap.servers = [10.100.241.139:9092, 10.100.241.140:9092, 10.100.241.141:9092]
	buffer.memory = 33554432
	client.dns.lookup = use_all_dns_ips
	client.id = producer-2
	compression.type = none
	connections.max.idle.ms = 540000
	delivery.timeout.ms = 120000
	enable.idempotence = true
	interceptor.classes = []
	key.serializer = class org.apache.kafka.common.serialization.StringSerializer
	linger.ms = 0
	max.block.ms = 60000
	max.in.flight.requests.per.connection = 5
	max.request.size = 1048576
	metadata.max.age.ms = 300000
	metadata.max.idle.ms = 300000
	metric.reporters = []
	metrics.num.samples = 2
	metrics.recording.level = INFO
	metrics.sample.window.ms = 30000
	partitioner.class = class org.apache.kafka.clients.producer.internals.DefaultPartitioner
	receive.buffer.bytes = 32768
	reconnect.backoff.max.ms = 1000
	reconnect.backoff.ms = 50
	request.timeout.ms = 30000
	retries = 5
	retry.backoff.ms = 500
	sasl.client.callback.handler.class = null
	sasl.jaas.config = null
	sasl.kerberos.kinit.cmd = /usr/bin/kinit
	sasl.kerberos.min.time.before.relogin = 60000
	sasl.kerberos.service.name = null
	sasl.kerberos.ticket.renew.jitter = 0.05
	sasl.kerberos.ticket.renew.window.factor = 0.8
	sasl.login.callback.handler.class = null
	sasl.login.class = null
	sasl.login.connect.timeout.ms = null
	sasl.login.read.timeout.ms = null
	sasl.login.refresh.buffer.seconds = 300
	sasl.login.refresh.min.period.seconds = 60
	sasl.login.refresh.window.factor = 0.8
	sasl.login.refresh.window.jitter = 0.05
	sasl.login.retry.backoff.max.ms = 10000
	sasl.login.retry.backoff.ms = 100
	sasl.mechanism = GSSAPI
	sasl.oauthbearer.clock.skew.seconds = 30
	sasl.oauthbearer.expected.audience = null
	sasl.oauthbearer.expected.issuer = null
	sasl.oauthbearer.jwks.endpoint.refresh.ms = 3600000
	sasl.oauthbearer.jwks.endpoint.retry.backoff.max.ms = 10000
	sasl.oauthbearer.jwks.endpoint.retry.backoff.ms = 100
	sasl.oauthbearer.jwks.endpoint.url = null
	sasl.oauthbearer.scope.claim.name = scope
	sasl.oauthbearer.sub.claim.name = sub
	sasl.oauthbearer.token.endpoint.url = null
	security.protocol = PLAINTEXT
	security.providers = null
	send.buffer.bytes = 131072
	socket.connection.setup.timeout.max.ms = 30000
	socket.connection.setup.timeout.ms = 10000
	ssl.cipher.suites = null
	ssl.enabled.protocols = [TLSv1.2, TLSv1.3]
	ssl.endpoint.identification.algorithm = https
	ssl.engine.factory.class = null
	ssl.key.password = null
	ssl.keymanager.algorithm = SunX509
	ssl.keystore.certificate.chain = null
	ssl.keystore.key = null
	ssl.keystore.location = null
	ssl.keystore.password = null
	ssl.keystore.type = JKS
	ssl.protocol = TLSv1.3
	ssl.provider = null
	ssl.secure.random.implementation = null
	ssl.trustmanager.algorithm = PKIX
	ssl.truststore.certificates = null
	ssl.truststore.location = null
	ssl.truststore.password = null
	ssl.truststore.type = JKS
	transaction.timeout.ms = 60000
	transactional.id = null
	value.serializer = class org.springframework.kafka.support.serializer.JsonSerializer
	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.556	TagStateHistory Entity with messageKey : 680845210, topic : fastag_issuer_staging_fastag-issuer-preprocess-tag-state-history	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.556	onPostInsert Type:com.paytm.issuance.commons.db.entity.TagStateHistory , Object:TagStateHistory(id=680845210, tagId=34161FA820328E4002A37C60, tag=null, issuanceStatus=ACTIVE, createdAt=Thu Sep 18 12:13:08 IST 2025, updatedAt=Thu Sep 18 12:13:08 IST 2025, tagFromIssuanceState=ACTIVE, agentId=null, tagAttrTo=null, tagAttrFrom=null, eventType=NPCI_STATE_CHANGE, metaData={npci_state_action=1, npci_state=BLACKLISTED, tag_from_npci_state=01,03, tag_to_npci_state=01,03, comment=BlackListed Tag, source=ONLINE_TOLL_TXN})	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.556	[CommonProducer.produce] KafkaProducerEvent is KafkaProducerEvent(payload=680845210, type=TagStateHistory),topic is fastag_issuer_staging_fastag-issuer-preprocess-tag-state-history, key is 680845210	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.527	Error in getVehicleDetails API with url :http://middleware-banktest-automation.eks-mwite1/genericMock2/Svs-IssuerNPCI/reqDetails?msgId=GGBC-MOCK	ERROR	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.527	Total tags: 1 | No. of Tags with same exception code in DB: 0 | No. of filtered tag sent for operation: 1 | custId: 1000428916	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.527	Details of RestTemplate Exception | StatusCode : 400 BAD_REQUEST | RawStatusCode : 400 | Message : 400 : "{"status":"failure","message":"I/O error on POST request for \"https://issuer-npci-active-active-nlb-cf19ecdb70678dbd.elb.ap-south-1.amazonaws.com/reqDetails\": connect timed out; nested exception is java.net.SocketTimeoutException: connect timed out","responseCode":0}" | StatusText :  | responseBody: {"status":"failure","message":"I/O error on POST request for \"https://issuer-npci-active-active-nlb-cf19ecdb70678dbd.elb.ap-south-1.amazonaws.com/reqDetails\": connect timed out; nested exception is java.net.SocketTimeoutException: connect timed out","responseCode":0}	ERROR	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.527	[TagService.checkBlacklistStatusFromNpci] Error while checking Blacklist or Govt Blacklist Exception from NPCI : Faced error in req Details NETC	ERROR	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:13:08.527	[addRemoveTagInGivenStateV2] Mark tagId: 34161FA820328E4002A37C60 | ExceptionCode: BLACKLISTED | Operation: ADD | comment: BlackListed Tag | source: ONLINE_TOLL_TXN | custId: 1000428916	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.499	className=TransactionMasterRepository, methodName=updateAllNpciErrorCodeInTxnMeta, group=DB, Time elapsed=79 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.420	[insertSubErrorCodeInTagMeta] Exceptions:{081,051} 	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.419	className=TransactionMasterRepository, methodName=findByTagIdAndReaderTimeAndPlazaIdAndLaneDir, group=DB, Time elapsed=7 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.410	className=TransactionMasterRepository, methodName=findByTagIdAndReaderTimeGreaterThanAndReaderTimeLessThanAndPlazaId, group=DB, Time elapsed=8 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.401	className=TransactionMasterRepository, methodName=findByTagIdAndReaderTimeGreaterThanAndReaderTimeLessThan, group=DB, Time elapsed=77 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.400	Hitting request to Netc Engine: http://middleware-banktest-automation.eks-mwite1/genericMock2/Svs-IssuerNPCI/reqDetails?msgId=GGBC-MOCK ,  Request body: ReqDetails(tagId=34161FA820328E4002A37C60, vehicleTId=null)	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.400	url : http://middleware-banktest-automation.eks-mwite1/genericMock2/Svs-IssuerNPCI/reqDetails?msgId=GGBC-MOCK, method : POST, requestBody : ReqDetails(tagId=34161FA820328E4002A37C60, vehicleTId=null)	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.325	[TagService.checkBlacklistStatusFromNpci] checking Blacklist or Govt Blacklist Exception for tag: Tag(id=23320337, tagSequenceNumber=10334819, epcId=34161FA820328E4002A37C60, tId=tid1757936690838, signature=null, assignedTo=null, inventoryStatus=ISSUED, issuanceStatus=ACTIVE, productId=null, vehicleClass=VC20, vehicleType=null, customerId=1000428916, leadId=null, distributionChannelId=null, orderId=null, issueDate=null, tagNpciStateActive=false, tagNpciStateBlacklist=true, tagNpciStateExempt=false, tagNpciStateLowBalance=true, tagNpciStateGovtBlacklist=false, tagNpciStateInvalidCarriage=false, tagNpciStateClosedReplaced=false, createdAt=2025-09-15 17:14:51.0, updatedAt=2025-09-18 12:04:00.0, assignedFrom=null, batchId=null, sequenceNumber=null, npciStateUpdateTime=2025-09-16T14:51:43, encryptedCustomerId=null, tvc=null, tagMetaInfo={remove_from_bl_if_dues_cleared=Y}, leadStatus=null, isCorporate=false, issuanceSource=null, initAt=null, closedDate=null, tagStateHistoryMetaData={})	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.323	className=PlazaInfoMasterRepository, methodName=findAllByIsActive, group=DB, Time elapsed=3 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.321	readerTime :2025-09-18T12:11:23 and tagLowBalanceTime:2025-09-16T14:51:43	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.321	seconds diff :163180	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.320	[SwitchTransactionConsumer.consumeSwitchTransactionRecord] Consumed message is TransactionRecordKafkaPayload(transactionData=TransactionData(transactionId=00558295713515, msgId=ACQ000011894208925, tagId=34161FA820328E4002A37C60, type=Toll, tid=E20034120124FF000AC920EB, orgId=ICIA, readerDateTime=2025-09-18T12:11:23, acknowledgementDateTime=2025-09-18T12:12:07, msgDateTime=2025-09-09T12:18:56, amount=90.00, transactionType=DEBIT, riskScoreList=[RiskScore(provider=NPCI, type=TXNRISK, value=00999)], payerDetails=PayerDetails(address=34161FA820328E40071FFFC0@608032.iin.npci, type=PERSON, currency=INR), payeeDetails=PayeeDetails(address=720301@iin.npci, type=MERCHANT), merchantDetails=MerchantDetails(name=Sasthan Toll Plaza, geoCode=13.476043,74.7127896, type=Toll, subType=National, readerId=257001, readerVerificationResult=ReaderVerificationResult(signData=, signAuth=VALID, tagVerified=NETC TAG, procRestrictionResult=, vehicleAuth=UNKNOWN, publicKeyCvv=, txnCounter=5485, txnStatus=SUCCESS), parkingDetails=ParkingDetails(floor=, readerId=, entryGateNumber=, exitGateNumber=)), vehicleDetails=VehicleDetails(vehicleClass=VC4, tagStatus=A, issueDate=19-12-2019, excCode=00, bankId=608032, comVehicle=F), txnDetails=TransactionDetails(note=null, refId=257001L02090925121823, refUrl=, orgTxnId=, transactionDateTime=2025-09-09T12:18:55), avc=VC20, wim=, laneId=L02, laneDirection=N, plazaId=257001, netcEngineId=3847808565, source=null), tagMetaData=Tag(id=23320337, tagSequenceNumber=10334819, epcId=34161FA820328E4002A37C60, tId=tid1757936690838, signature=null, assignedTo=null, inventoryStatus=ISSUED, issuanceStatus=ACTIVE, productId=null, vehicleClass=VC20, vehicleType=null, customerId=1000428916, leadId=null, distributionChannelId=null, orderId=null, issueDate=null, tagNpciStateActive=false, tagNpciStateBlacklist=true, tagNpciStateExempt=false, tagNpciStateLowBalance=true, tagNpciStateGovtBlacklist=false, tagNpciStateInvalidCarriage=false, tagNpciStateClosedReplaced=false, createdAt=2025-09-15 17:14:51.0, updatedAt=2025-09-18 12:04:00.0, assignedFrom=null, batchId=null, sequenceNumber=null, npciStateUpdateTime=2025-09-16T14:51:43, encryptedCustomerId=null, tvc=null, tagMetaInfo={remove_from_bl_if_dues_cleared=Y}, leadStatus=null, isCorporate=false, issuanceSource=null, initAt=null, closedDate=null, tagStateHistoryMetaData={}), insertedTransaction=Transaction(id=2416427424, tagId=34161FA820328E4002A37C60, npciTransactionId=00558295713515, npciMsgId=ACQ000011894208925, acquirerId=720301, vehTid=E20034120124FF000AC920EB, plazaId=257001, laneId=L02, laneDir=N, transactionStatus=PENDING, walletStatus=null, npciRespPayStatus=null, resPayHttpCode=null, rejectionDesc=null, rejectionCode=null, parentTxnId=null, orgTxnId=, npciOrgId=ICIA, avc=VC20, wim=, readerTime=2025-09-18T12:11:23, npciResPayTime=null, withdrawTime=null, settlementTime=null, walletConsumeTime=null, walletTransactionId=null, npciMsgTime=2025-09-09T12:18:56, ackTime=2025-09-18T12:12:07, amount=90.0, txnType=DEBIT, customerId=1000428916, vehicleDetailsMeta=VehicleDetails(vehicleClass=VC4, tagStatus=A, issueDate=19-12-2019, excCode=00, bankId=608032, comVehicle=F), payeeDetailsMeta=PayeeDetails(address=720301@iin.npci, type=MERCHANT), payerDetailsMeta=PayerDetails(address=34161FA820328E40071FFFC0@608032.iin.npci, type=PERSON, currency=INR), txnMeta=TransactionDetails(note=null, refId=257001L02090925121823, refUrl=, orgTxnId=, transactionDateTime=2025-09-09T12:18:55), meta=TransactionMeta(parentTollTransactionId=null, parentReaderTime=null, netcEngineId=3847808565, utid=257001_00558295713515_90.0_34161FA820328E4002A37C60_250909121855_D, source=NPCI, cancelTxnJobId=null, npciRejectionCode=null, npciSubErrorCode=null, bulkDebitRetryJobId=null, adjustedCashback=null, remainingDebt=null, reportingCodes=null, closestTransactionId=null, isWalletTransaction=null, walletOrderId=null, additionalProperties={}), riskScoreMeta=[RiskScore(provider=NPCI, type=TXNRISK, value=00999)], merchantMeta=MerchantDetails(name=Sasthan Toll Plaza, geoCode=13.476043,74.7127896, type=Toll, subType=National, readerId=257001, readerVerificationResult=ReaderVerificationResult(signData=, signAuth=VALID, tagVerified=NETC TAG, procRestrictionResult=, vehicleAuth=UNKNOWN, publicKeyCvv=, txnCounter=5485, txnStatus=SUCCESS), parkingDetails=ParkingDetails(floor=, readerId=, entryGateNumber=, exitGateNumber=)), vehicleGroupId=null, type=TOLL, createdAt=Thu Sep 18 12:12:08 IST 2025, updatedAt=Thu Sep 18 12:12:08 IST 2025, ignoreIngestInES=true)),topic is fastag_issuer_staging_npci_error_code_transaction_records ,partition is 0 ,offset is 10	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.306	className=AcquirerRepositoryMaster, methodName=findAll, group=DB, Time elapsed=75 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.300	[KafkaListenerAspect] consumer name : consume_switch_transaction_record , appId: IssuerSwitch	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.230	######## Apply TOll rules called ########, for npci msg id: ACQ000011894208925	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.226	[TransactionProducer.produceTransactionMessage] message is TransactionRecordKafkaPayload(transactionData=TransactionData(transactionId=00558295713515, msgId=ACQ000011894208925, tagId=34161FA820328E4002A37C60, type=Toll, tid=E20034120124FF000AC920EB, orgId=ICIA, readerDateTime=2025-09-18T12:11:23, acknowledgementDateTime=2025-09-18T12:12:07, msgDateTime=2025-09-09T12:18:56, amount=90.00, transactionType=DEBIT, riskScoreList=[RiskScore(provider=NPCI, type=TXNRISK, value=00999)], payerDetails=PayerDetails(address=34161FA820328E40071FFFC0@608032.iin.npci, type=PERSON, currency=INR), payeeDetails=PayeeDetails(address=720301@iin.npci, type=MERCHANT), merchantDetails=MerchantDetails(name=Sasthan Toll Plaza, geoCode=13.476043,74.7127896, type=Toll, subType=National, readerId=257001, readerVerificationResult=ReaderVerificationResult(signData=, signAuth=VALID, tagVerified=NETC TAG, procRestrictionResult=, vehicleAuth=UNKNOWN, publicKeyCvv=, txnCounter=5485, txnStatus=SUCCESS), parkingDetails=ParkingDetails(floor=, readerId=, entryGateNumber=, exitGateNumber=)), vehicleDetails=VehicleDetails(vehicleClass=VC4, tagStatus=A, issueDate=19-12-2019, excCode=00, bankId=608032, comVehicle=F), txnDetails=TransactionDetails(note=null, refId=257001L02090925121823, refUrl=, orgTxnId=, transactionDateTime=2025-09-09T12:18:55), avc=VC20, wim=, laneId=L02, laneDirection=N, plazaId=257001, netcEngineId=3847808565, source=null), tagMetaData=Tag(id=23320337, tagSequenceNumber=10334819, epcId=34161FA820328E4002A37C60, tId=tid1757936690838, signature=null, assignedTo=null, inventoryStatus=ISSUED, issuanceStatus=ACTIVE, productId=null, vehicleClass=VC20, vehicleType=null, customerId=1000428916, leadId=null, distributionChannelId=null, orderId=null, issueDate=null, tagNpciStateActive=false, tagNpciStateBlacklist=true, tagNpciStateExempt=false, tagNpciStateLowBalance=true, tagNpciStateGovtBlacklist=false, tagNpciStateInvalidCarriage=false, tagNpciStateClosedReplaced=false, createdAt=2025-09-15 17:14:51.0, updatedAt=2025-09-18 12:04:00.0, assignedFrom=null, batchId=null, sequenceNumber=null, npciStateUpdateTime=2025-09-16T14:51:43, encryptedCustomerId=null, tvc=null, tagMetaInfo={remove_from_bl_if_dues_cleared=Y}, leadStatus=null, isCorporate=false, issuanceSource=null, initAt=null, closedDate=null, tagStateHistoryMetaData={}), insertedTransaction=Transaction(id=2416427424, tagId=34161FA820328E4002A37C60, npciTransactionId=00558295713515, npciMsgId=ACQ000011894208925, acquirerId=720301, vehTid=E20034120124FF000AC920EB, plazaId=257001, laneId=L02, laneDir=N, transactionStatus=PENDING, walletStatus=null, npciRespPayStatus=null, resPayHttpCode=null, rejectionDesc=null, rejectionCode=null, parentTxnId=null, orgTxnId=, npciOrgId=ICIA, avc=VC20, wim=, readerTime=2025-09-18T12:11:23, npciResPayTime=null, withdrawTime=null, settlementTime=null, walletConsumeTime=null, walletTransactionId=null, npciMsgTime=2025-09-09T12:18:56, ackTime=2025-09-18T12:12:07, amount=90.0, txnType=DEBIT, customerId=1000428916, vehicleDetailsMeta=VehicleDetails(vehicleClass=VC4, tagStatus=A, issueDate=19-12-2019, excCode=00, bankId=608032, comVehicle=F), payeeDetailsMeta=PayeeDetails(address=720301@iin.npci, type=MERCHANT), payerDetailsMeta=PayerDetails(address=34161FA820328E40071FFFC0@608032.iin.npci, type=PERSON, currency=INR), txnMeta=TransactionDetails(note=null, refId=257001L02090925121823, refUrl=, orgTxnId=, transactionDateTime=2025-09-09T12:18:55), meta=TransactionMeta(parentTollTransactionId=null, parentReaderTime=null, netcEngineId=3847808565, utid=257001_00558295713515_90.0_34161FA820328E4002A37C60_250909121855_D, source=NPCI, cancelTxnJobId=null, npciRejectionCode=null, npciSubErrorCode=null, bulkDebitRetryJobId=null, adjustedCashback=null, remainingDebt=null, reportingCodes=null, closestTransactionId=null, isWalletTransaction=null, walletOrderId=null, additionalProperties={}), riskScoreMeta=[RiskScore(provider=NPCI, type=TXNRISK, value=00999)], merchantMeta=MerchantDetails(name=Sasthan Toll Plaza, geoCode=13.476043,74.7127896, type=Toll, subType=National, readerId=257001, readerVerificationResult=ReaderVerificationResult(signData=, signAuth=VALID, tagVerified=NETC TAG, procRestrictionResult=, vehicleAuth=UNKNOWN, publicKeyCvv=, txnCounter=5485, txnStatus=SUCCESS), parkingDetails=ParkingDetails(floor=, readerId=, entryGateNumber=, exitGateNumber=)), vehicleGroupId=null, type=TOLL, createdAt=Thu Sep 18 12:12:08 IST 2025, updatedAt=Thu Sep 18 12:12:08 IST 2025, ignoreIngestInES=true)),topic is fastag_issuer_staging_npci_error_code_transaction_records	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.201	[end] Insert transaction, npci msg id: ACQ000011894208925	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.201	className=TransactionMasterRepository, methodName=save, group=DB, Time elapsed=276 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.121	onPostInsert Type:com.paytm.issuance.commons.db.entity.Transaction , Object:Transaction(id=2416427424, tagId=34161FA820328E4002A37C60, npciTransactionId=00558295713515, npciMsgId=ACQ000011894208925, acquirerId=720301, vehTid=E20034120124FF000AC920EB, plazaId=257001, laneId=L02, laneDir=N, transactionStatus=PENDING, walletStatus=null, npciRespPayStatus=null, resPayHttpCode=null, rejectionDesc=null, rejectionCode=null, parentTxnId=null, orgTxnId=, npciOrgId=ICIA, avc=VC20, wim=, readerTime=2025-09-18T12:11:23, npciResPayTime=null, withdrawTime=null, settlementTime=null, walletConsumeTime=null, walletTransactionId=null, npciMsgTime=2025-09-09T12:18:56, ackTime=2025-09-18T12:12:07, amount=90.0, txnType=DEBIT, customerId=1000428916, vehicleDetailsMeta=VehicleDetails(vehicleClass=VC4, tagStatus=A, issueDate=19-12-2019, excCode=00, bankId=608032, comVehicle=F), payeeDetailsMeta=PayeeDetails(address=720301@iin.npci, type=MERCHANT), payerDetailsMeta=PayerDetails(address=34161FA820328E40071FFFC0@608032.iin.npci, type=PERSON, currency=INR), txnMeta=TransactionDetails(note=null, refId=257001L02090925121823, refUrl=, orgTxnId=, transactionDateTime=2025-09-09T12:18:55), meta=TransactionMeta(parentTollTransactionId=null, parentReaderTime=null, netcEngineId=3847808565, utid=257001_00558295713515_90.0_34161FA820328E4002A37C60_250909121855_D, source=NPCI, cancelTxnJobId=null, npciRejectionCode=null, npciSubErrorCode=null, bulkDebitRetryJobId=null, adjustedCashback=null, remainingDebt=null, reportingCodes=null, closestTransactionId=null, isWalletTransaction=null, walletOrderId=null, additionalProperties={}), riskScoreMeta=[RiskScore(provider=NPCI, type=TXNRISK, value=00999)], merchantMeta=MerchantDetails(name=Sasthan Toll Plaza, geoCode=13.476043,74.7127896, type=Toll, subType=National, readerId=257001, readerVerificationResult=ReaderVerificationResult(signData=, signAuth=VALID, tagVerified=NETC TAG, procRestrictionResult=, vehicleAuth=UNKNOWN, publicKeyCvv=, txnCounter=5485, txnStatus=SUCCESS), parkingDetails=ParkingDetails(floor=, readerId=, entryGateNumber=, exitGateNumber=)), vehicleGroupId=null, type=TOLL, createdAt=Thu Sep 18 12:12:08 IST 2025, updatedAt=Thu Sep 18 12:12:08 IST 2025, ignoreIngestInES=true)	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:08.121	onPostInsert payload is not inserting into ES ingestion topic, ignoreIngestInES :true	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.921	className=TagMasterRepository, methodName=findByEpcId, group=DB, Time elapsed=5 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.921	[Start] Insert transaction, npci msg id: ACQ000011894208925	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.916	className=TransactionMasterRepository, methodName=findByTagIdAndReaderTimeAndNpciTransactionIdAndLaneIdAndLaneDirAndPlazaId, group=DB, Time elapsed=7 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.906	className=TransactionMasterRepository, methodName=checkDuplicateTransactionPayload, group=DB, Time elapsed=79 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.824	[TransactionValidationConsumer.consume] Consumed message is TransactionData(transactionId=00558295713515, msgId=ACQ000011894208925, tagId=34161FA820328E4002A37C60, type=Toll, tid=E20034120124FF000AC920EB, orgId=ICIA, readerDateTime=2025-09-18T12:11:23, acknowledgementDateTime=2025-09-18T12:12:07, msgDateTime=2025-09-09T12:18:56, amount=90.00, transactionType=DEBIT, riskScoreList=[RiskScore(provider=NPCI, type=TXNRISK, value=00999)], payerDetails=PayerDetails(address=34161FA820328E40071FFFC0@608032.iin.npci, type=PERSON, currency=INR), payeeDetails=PayeeDetails(address=720301@iin.npci, type=MERCHANT), merchantDetails=MerchantDetails(name=Sasthan Toll Plaza, geoCode=13.476043,74.7127896, type=Toll, subType=National, readerId=257001, readerVerificationResult=ReaderVerificationResult(signData=, signAuth=VALID, tagVerified=NETC TAG, procRestrictionResult=, vehicleAuth=UNKNOWN, publicKeyCvv=, txnCounter=5485, txnStatus=SUCCESS), parkingDetails=ParkingDetails(floor=, readerId=, entryGateNumber=, exitGateNumber=)), vehicleDetails=VehicleDetails(vehicleClass=VC4, tagStatus=A, issueDate=19-12-2019, excCode=00, bankId=608032, comVehicle=F), txnDetails=TransactionDetails(note=null, refId=257001L02090925121823, refUrl=, orgTxnId=, transactionDateTime=2025-09-09T12:18:55), avc=VC20, wim=, laneId=L02, laneDirection=N, plazaId=257001, netcEngineId=3847808565, source=null),topic is fastag_issuer_staging_req_pay_staging_new ,partition is 3 ,offset is 13	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.787	[KafkaListenerAspect] consumer name : consume_transaction_validation , appId: NetcEngine	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
​

mysql> select * from transaction where tag_id = '34161FJ820929E40071FODR3' \G;
*************************** 1. row ***************************
                   id: 2416427427
             efkon_id: NULL
               tag_id: 34161FJ820929E40071FODR3
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
   npci_resp_pay_time: 2025-09-18 14:03:33
  wallet_consume_time: NULL
        withdraw_time: NULL
wallet_transaction_id: NULL
        npci_msg_time: 2025-09-09 12:18:56
             ack_time: 2025-09-18 14:03:32
               amount: 30
             txn_type: DEBIT
          customer_id: NULL
 vehicle_details_meta: {"iss_dt": "19-12-2019", "bank_id": "608032", "com_veh": "F", "reg_num": "FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ==", "veh_cls": "VC4", "exc_code": "00", "tag_status": "A"}
   payee_details_meta: {"add": "720301@iin.npci", "name": "", "type": "MERCHANT"}
   payer_details_meta: {"add": "34161FA820328E40071FFFC0@608032.iin.npci", "curr": "INR", "name": "", "type": "PERSON"}
             txn_meta: {"note": null, "ref_id": "257001L02090925121823", "txn_dt": "2025-09-09T12:18:55", "ref_url": "", "org_txn_id": ""}
                 meta: {"utid": "257001_005582957135_30.0_34161FJ820929E40071FODR3_250909121855_D", "source": "NPCI", "netc_engine_id": 3847808571, "npci_rejection_code": "052", "npci_sub_error_code": "{054}"}
      risk_score_meta: [{"type": "TXNRISK", "value": "00999", "provider": "NPCI"}]
        merchant_meta: {"tp": "Toll", "name": "Sasthan Toll Plaza", "rdr_id": "257001", "sub_tp": "National", "geo_code": "13.476043,74.7127896", "parking_det": {"floor": "", "readerId": "", "exitGateNumber": "", "entryGateNumber": ""}, "rdr_ver_res": {"tag_ver": "NETC TAG", "txn_ctr": "5485", "txn_sts": "SUCCESS", "veh_auth": "UNKNOWN", "sign_auth": "VALID", "sign_data": "", "proc_rest_res": "", "public_key_cvv": ""}}
             group_id: NULL
           created_at: 2025-09-18 14:03:33
           updated_at: 2025-09-18 14:03:33
       temp_timestamp: 2025-09-18 14:03:32
                 type: 1
      settlement_time: NULL
1 row in set (0.01 sec)

ERROR: 
No query specified

