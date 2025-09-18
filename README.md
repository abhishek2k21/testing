curl --location 'https://fastag-issuer-netc-engine-nonprod-internal.paytmbank.com:443/reqPayService' \
--header 'Content-Type: text/plain' \
--data-raw '<?xml version="1.0" encoding="UTF-8"?>
<etc:ReqPay xmlns:etc="http://npci.org/etc/schema/">
    <Head msgId="ACQ000011894208925" orgId="ICIA" ts="2025-09-09T12:18:56" ver="1.0"/>
    <Meta>
        <Tag name="PAYREQSTART" value="2025-09-09T12:18:55"/>
        <Tag name="PAYREQEND" value="2025-09-09T12:18:55"/>
    </Meta>
    <Txn id="005582957135" orgTxnId="" refId="257001L02090925121823" refUrl="" ts="2025-09-09T12:18:55" type="DEBIT">
        <RiskScores>
            <Score provider="NPCI" type="TXNRISK" value="00999"/>
        </RiskScores>
    </Txn>
    <Merchant geoCode="13.476043,74.7127896" id="257001" name="Sasthan Toll Plaza" subtype="National" type="Toll">
        <Lane direction="N" id="L02" readerId=""/>
        <Parking floor="" readerId="" slotId="" zone=""/>
        <ReaderVerificationResult procRestrictionResult="" publicKeyCVV="" signAuth="VALID" signData="" tagVerified="NETC TAG" tsRead="2025-09-09T12:18:23" txnCounter="5485" txnStatus="SUCCESS" vehicleAuth="UNKNOWN"/>
    </Merchant>
    <Vehicle TID="E20034120124FF000AC920EB" avc="VC20" tagId="34161FJ820929E40071FODR3" wim="">
        <VehicleDetails>
            <Detail name="VEHICLECLASS" value="VC4"/>
            <Detail name="REGNUMBER" value="FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ=="/>
            <Detail name="TAGSTATUS" value="A"/>
            <Detail name="ISSUEDATE" value="19-12-2019"/>
            <Detail name="EXCCODE" value="00"/>
            <Detail name="BANKID" value="608032"/>
            <Detail name="COMVEHICLE" value="F"/>
        </VehicleDetails>
    </Vehicle>
    <Payer addr="34161FA820328E40071FFFC0@608032.iin.npci" name="" type="PERSON">
        <Amount curr="INR" value="30.00"/>
    </Payer>
    <Payee addr="720301@iin.npci" name="" type="MERCHANT"/>
</etc:ReqPay>'


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

	Sep 18, 2025 @ 12:14:09.173	Kafka version: 3.1.2	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.173	Kafka commitId: f8c67dc3ae0a3265	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.173	Kafka startTimeMs: 1758177849173	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.170	ProducerConfig values: 
	acks = 1
	batch.size = 16384
	bootstrap.servers = [10.100.241.139:9092, 10.100.241.140:9092, 10.100.241.141:9092]
	buffer.memory = 33554432
	client.dns.lookup = use_all_dns_ips
	client.id = producer-5
	compression.type = snappy
	connections.max.idle.ms = 540000
	delivery.timeout.ms = 120000
	enable.idempotence = false
	interceptor.classes = [com.paytm.acquirer.netc.config.CorrelationIdProducerInterceptor]
	key.serializer = class org.apache.kafka.common.serialization.StringSerializer
	linger.ms = 20
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
	request.timeout.ms = 1000
	retries = 2147483647
	retry.backoff.ms = 100
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
	Sep 18, 2025 @ 12:14:09.170	Idempotence will be disabled because acks is set to 1, not set to 'all'.	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.170	sending data to topic='fastag_issuer_staging_response_queue' and data='{"res_type_enum":"RESPPAY","response_data":"{\"ts\":\"2025-09-18T12:14:09\",\"reference_id\":2416427424,\"http_code\":\"202\"}"}'	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.168	className=AsyncTransactionRepository, methodName=save, group=DB, Time elapsed=12 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.155	className=AsyncTransactionRepository, methodName=findById, group=DB, Time elapsed=44 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.109	RespPay response code: 202 ACCEPTED for msgId: ACQ000011894208925	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.109	url : http://middleware-banktest-automation.eks-mwite1/genericMock2/Svs-IssuerNPCI/responsePayService, method : POST, responseBody : null, httpStatus : 202 ACCEPTED	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.050	hitting netc service for respPay	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.050	url : http://middleware-banktest-automation.eks-mwite1/genericMock2/Svs-IssuerNPCI/responsePayService, method : POST, requestBody : <?xml version="1.0" encoding="UTF-8" standalone="no"?><etc:RespPay xmlns:etc="http://npci.org/etc/schema/"><Head msgId="ACQ000011894208925" orgId="PAYM" ts="2025-09-18T12:14:08" ver="1.0"/><Txn id="00558295713515" note="" orgTxnId="" refId="257001L02090925121823" refUrl="" ts="2025-09-09T12:18:55" type="DEBIT"><RiskScores><Score provider="NPCI" type="TXNRISK" value="00999"/></RiskScores></Txn><Resp merchantId="257001" respCode="000" result="ACCEPTED" ts="2025-09-18T12:14:08"><Ref accType="" addr="34161FA820328E40071FFFC0@608032.iin.npci" approvalNum="7424" avalBal="" customerName="" errCode="081" ledgerBal="" maskedAccountNumber="" settAmount="90.00" settCurrency="INR" type="PAYER"/></Resp><Signature xmlns="http://www.w3.org/2000/09/xmldsig#"><SignedInfo><CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"/><SignatureMethod Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"/><Reference URI=""><Transforms><Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"/></Transforms><DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/><DigestValue>VZOJUYkidcoM7GZwziFKdpGj45rOM08dnNrzAa5X1Kw=</DigestValue></Reference></SignedInfo><SignatureValue>CJ1rPfBxKSi4q0NriY+EFgs/Khpb/v+n4n54gHnbMxgrmsrsCv7OWnVCKJkCK+gRGBOhe61gWWFV&#13;
O7U/+ASrjpO9aP3DSG9L9uYdUniBHKzMZAZ7LnG71KBkvihastfqHiYz8wBiOFgMvx9yh0Z04OWr&#13;
+AtC869UVln2T1DNCv6bcwadaRaDhQ0XuBevzORZLxQQA4m9UkO+V5PwkT2ifAzuCGgwfTusoaKQ&#13;
S8pFu86FrQeej1WzIpRbvsdVuF/z+BmAL1eT0eUerkp8WW6YyMVqhtdLYvuI0EoZgfTVAMoWzVTx&#13;
v59SOJcyDHTh3Q3kMghzt5qk+Uw6o18Rm6rYuQ==</SignatureValue><KeyInfo><X509Data><X509SubjectName>CN=netc-uat.paytm.com,O=One97 Communications Limited,L=Noida,ST=Uttar Pradesh,C=IN</X509SubjectName><X509Certificate>MIIHIjCCBgqgAwIBAgIQDc2bPRcBC8If34pOCuNLXzANBgkqhkiG9w0BAQsFADBNMQswCQYDVQQG&#13;
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
lwHn/xSu</X509Certificate></X509Data></KeyInfo></Signature></etc:RespPay>	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:09.037	Signed RespPay request. <?xml version="1.0" encoding="UTF-8" standalone="no"?><etc:RespPay xmlns:etc="http://npci.org/etc/schema/"><Head msgId="ACQ000011894208925" orgId="PAYM" ts="2025-09-18T12:14:08" ver="1.0"/><Txn id="00558295713515" note="" orgTxnId="" refId="257001L02090925121823" refUrl="" ts="2025-09-09T12:18:55" type="DEBIT"><RiskScores><Score provider="NPCI" type="TXNRISK" value="00999"/></RiskScores></Txn><Resp merchantId="257001" respCode="000" result="ACCEPTED" ts="2025-09-18T12:14:08"><Ref accType="" addr="34161FA820328E40071FFFC0@608032.iin.npci" approvalNum="7424" avalBal="" customerName="" errCode="081" ledgerBal="" maskedAccountNumber="" settAmount="90.00" settCurrency="INR" type="PAYER"/></Resp><Signature xmlns="http://www.w3.org/2000/09/xmldsig#"><SignedInfo><CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"/><SignatureMethod Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"/><Reference URI=""><Transforms><Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"/></Transforms><DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/><DigestValue>VZOJUYkidcoM7GZwziFKdpGj45rOM08dnNrzAa5X1Kw=</DigestValue></Reference></SignedInfo><SignatureValue>CJ1rPfBxKSi4q0NriY+EFgs/Khpb/v+n4n54gHnbMxgrmsrsCv7OWnVCKJkCK+gRGBOhe61gWWFV&#13;
O7U/+ASrjpO9aP3DSG9L9uYdUniBHKzMZAZ7LnG71KBkvihastfqHiYz8wBiOFgMvx9yh0Z04OWr&#13;
+AtC869UVln2T1DNCv6bcwadaRaDhQ0XuBevzORZLxQQA4m9UkO+V5PwkT2ifAzuCGgwfTusoaKQ&#13;
S8pFu86FrQeej1WzIpRbvsdVuF/z+BmAL1eT0eUerkp8WW6YyMVqhtdLYvuI0EoZgfTVAMoWzVTx&#13;
v59SOJcyDHTh3Q3kMghzt5qk+Uw6o18Rm6rYuQ==</SignatureValue><KeyInfo><X509Data><X509SubjectName>CN=netc-uat.paytm.com,O=One97 Communications Limited,L=Noida,ST=Uttar Pradesh,C=IN</X509SubjectName><X509Certificate>MIIHIjCCBgqgAwIBAgIQDc2bPRcBC8If34pOCuNLXzANBgkqhkiG9w0BAQsFADBNMQswCQYDVQQG&#13;
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
lwHn/xSu</X509Certificate></X509Data></KeyInfo></Signature></etc:RespPay>	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.952	received data from resp-pay queue ='{"txn":{"note":null,"ts":"2025-09-09T12:18:55","type":"DEBIT","txn_id":"00558295713515","org_txn_id":"","ref_id":"257001L02090925121823","ref_url":"","risk_scores":[{"provider":"NPCI","type":"TXNRISK","value":"00999"}]},"resp":{"result":"ACCEPTED","ts":"2025-09-18T12:14:08","ref":{"addr":"34161FA820328E40071FFFC0@608032.iin.npci","type":"PAYER","approval_num":"7424","aval_bal":null,"cust_name":null,"err_code":"081","ledger_bal":null,"masked_acc_num":null,"set_amt":"90.00","set_curr":"INR"},"mer_id":"257001","resp_code":"000"},"msg_id":"ACQ000011894208925","reference_id":2416427424,"db_id":3847808565}'	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:14:08.951	[KafkaListenerAspect] consumer name : consumeReqPay , appId: IssuerSwitch	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.808	className=RequestDataRepository, methodName=save, group=DB, Time elapsed=14 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.794	Inserting id : 3847808565 to db.	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.793	[KafkaListenerAspect] consumer name : consumeDataToDatabase , appId: NetcEngine	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.793	received data from data to database queue ='RequestDataToDatabaseDetails(reqPayKafka=ReqPayKafka(dbId=3847808565, msgId=ACQ000011894208925, orgId=ICIA, msgDate=2025-09-09T12:18:56, txnId=00558295713515, transactionType=DEBIT, type=Toll, plazaId=257001, laneId=L02, laneDir=N, readerDate=2025-09-18T12:11:23, tid=E20034120124FF000AC920EB, avc=VC20, tagId=34161FA820328E4002A37C60, wim=, amount=90.00, acknowledgeTime=2025-09-18T12:12:07, riskScores=[RiskScore(provider=NPCI, type=TXNRISK, value=00999)], payerDetails=PayerDetails(address=34161FA820328E40071FFFC0@608032.iin.npci, currency=INR, name=, type=PERSON), payeeDetails=PayeeDetails(address=720301@iin.npci, name=, type=MERCHANT), merchantDetails=MerchantDetails(geoCode=13.476043,74.7127896, type=Toll, name=Sasthan Toll Plaza, subType=National, readerId=257001, readerVerificationResult=ReaderVerificationResult(signData=, signAuth=VALID, tagVerified=NETC TAG, procRestrictionResult=, vehicleAuth=UNKNOWN, publicKeyCvv=, txnCounter=5485, txnStatus=SUCCESS), parkingDetails=ParkingDetails(floor=, readerId=, entryGateNumber=, exitGateNumber=)), vehicleDetails=VehicleDetails(vehicleClass=VC4, registrationNumber=FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ==, tagStatus=A, issueDate=19-12-2019, excCode=00, bankId=608032, commercialVehicle=F), transactionDetails=TransactionDetails(note=null, refId=257001L02090925121823, refUrl=, orgTxnId=, txnDate=2025-09-09T12:18:55)), id=3847808565)'	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.793	after consuming data with handle	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.718	reqPayService | High ack time | Total: 157 | Bucket: 100to200 | AsyncRepo: 78 | RequestData: 61 | KafkaInsert: 17	WARN	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.706	Kafka startTimeMs: 1758177727706	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.706	Kafka version: 3.1.2	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.706	Kafka commitId: f8c67dc3ae0a3265	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.704	Idempotence will be disabled because acks is set to 1, not set to 'all'.	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.704	ProducerConfig values: 
	acks = 1
	batch.size = 16384
	bootstrap.servers = [10.100.241.139:9092, 10.100.241.140:9092, 10.100.241.141:9092]
	buffer.memory = 33554432
	client.dns.lookup = use_all_dns_ips
	client.id = producer-4
	compression.type = snappy
	connections.max.idle.ms = 540000
	delivery.timeout.ms = 120000
	enable.idempotence = false
	interceptor.classes = [com.paytm.acquirer.netc.config.CorrelationIdProducerInterceptor]
	key.serializer = class org.apache.kafka.common.serialization.StringSerializer
	linger.ms = 20
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
	request.timeout.ms = 1000
	retries = 2147483647
	retry.backoff.ms = 100
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
	Sep 18, 2025 @ 12:12:07.704	sending to topic='fastag_issuer_staging_req_pay_staging_new' and data='{"db_id":3847808565,"msg_id":"ACQ000011894208925","org_id":"ICIA","msg_dt":"2025-09-09T12:18:56","txn_id":"00558295713515","txn_type":"DEBIT","type":"Toll","plaza_id":"257001","lane_id":"L02","lane_dir":"N","reader_dt":"2025-09-18T12:11:23","tid":"E20034120124FF000AC920EB","avc":"VC20","tag_id":"34161FA820328E4002A37C60","wim":"","amount":"90.00","ack_dt":"2025-09-18T12:12:07","risk_scores":[{"provider":"NPCI","type":"TXNRISK","value":"00999"}],"payer_dtl":{"add":"34161FA820328E40071FFFC0@608032.iin.npci","curr":"INR","type":"PERSON"},"payee_dtl":{"add":"720301@iin.npci","type":"MERCHANT"},"mer_dtl":{"geo_code":"13.476043,74.7127896","tp":"Toll","name":"Sasthan Toll Plaza","sub_tp":"National","rdr_id":"257001","rdr_ver_res":{"sign_auth":"VALID","tag_ver":"NETC TAG","veh_auth":"UNKNOWN","txn_ctr":"5485","txn_sts":"SUCCESS"},"parking_det":{"floor":"","readerId":"","entryGateNumber":"","exitGateNumber":""}},"veh_dtl":{"veh_cls":"VC4","reg_num":"FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ==","tag_status":"A","iss_dt":"19-12-2019","exc_code":"00","bank_id":"608032","com_veh":"F"},"txn_dtl":{"ref_id":"257001L02090925121823","txn_dt":"2025-09-09T12:18:55"}}'	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.676	Kafka version: 3.1.2	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.676	Kafka commitId: f8c67dc3ae0a3265	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.676	Kafka startTimeMs: 1758177727676	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.675	ProducerConfig values: 
	acks = 1
	batch.size = 16384
	bootstrap.servers = [10.100.241.139:9092, 10.100.241.140:9092, 10.100.241.141:9092]
	buffer.memory = 33554432
	client.dns.lookup = use_all_dns_ips
	client.id = producer-3
	compression.type = snappy
	connections.max.idle.ms = 540000
	delivery.timeout.ms = 120000
	enable.idempotence = false
	interceptor.classes = [com.paytm.acquirer.netc.config.CorrelationIdProducerInterceptor]
	key.serializer = class org.apache.kafka.common.serialization.StringSerializer
	linger.ms = 20
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
	request.timeout.ms = 1000
	retries = 2147483647
	retry.backoff.ms = 100
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
	Sep 18, 2025 @ 12:12:07.675	Idempotence will be disabled because acks is set to 1, not set to 'all'.	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.674	sending to topic='fastag_issuer_staging_request_data_to_database' and data='KafkaEvent(payload=RequestDataToDatabaseDetails(reqPayKafka=ReqPayKafka(dbId=3847808565, msgId=ACQ000011894208925, orgId=ICIA, msgDate=2025-09-09T12:18:56, txnId=00558295713515, transactionType=DEBIT, type=Toll, plazaId=257001, laneId=L02, laneDir=N, readerDate=2025-09-18T12:11:23, tid=E20034120124FF000AC920EB, avc=VC20, tagId=34161FA820328E4002A37C60, wim=, amount=90.00, acknowledgeTime=2025-09-18T12:12:07, riskScores=[RiskScore(provider=NPCI, type=TXNRISK, value=00999)], payerDetails=PayerDetails(address=34161FA820328E40071FFFC0@608032.iin.npci, currency=INR, name=, type=PERSON), payeeDetails=PayeeDetails(address=720301@iin.npci, name=, type=MERCHANT), merchantDetails=MerchantDetails(geoCode=13.476043,74.7127896, type=Toll, name=Sasthan Toll Plaza, subType=National, readerId=257001, readerVerificationResult=ReaderVerificationResult(signData=, signAuth=VALID, tagVerified=NETC TAG, procRestrictionResult=, vehicleAuth=UNKNOWN, publicKeyCvv=, txnCounter=5485, txnStatus=SUCCESS), parkingDetails=ParkingDetails(floor=, readerId=, entryGateNumber=, exitGateNumber=)), vehicleDetails=VehicleDetails(vehicleClass=VC4, registrationNumber=FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ==, tagStatus=A, issueDate=19-12-2019, excCode=00, bankId=608032, commercialVehicle=F), transactionDetails=TransactionDetails(note=null, refId=257001L02090925121823, refUrl=, orgTxnId=, txnDate=2025-09-09T12:18:55)), id=3847808565))'	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.650	Error while decrypting registration number	ERROR	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.638	className=AsyncTransactionRepository, methodName=save, group=DB, Time elapsed=76 ms	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.552	[KafkaListenerAspect] consumer name : consumeReqPayXml , appId: NetcEngine	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.552	received data from resp-pay-xml queue ='{"namespace":"http://npci.org/etc/schema/","header":{"version":"1.0","timeStamp":"2025-09-09T12:18:56","organizationId":"ICIA","messageId":"ACQ000011894208925"},"metaTags":[{"name":"PAYREQSTART","value":"2025-09-09T12:18:55"},{"name":"PAYREQEND","value":"2025-09-09T12:18:55"}],"transaction":{"id":"00558295713515","note":null,"referenceId":"257001L02090925121823","referenceUrl":"","timeStamp":"2025-09-09T12:18:55","type":"DEBIT","originalTransactionId":"","riskScores":[{"provider":"NPCI","type":"TXNRISK","value":"00999"}]},"merchant":{"id":"257001","name":"Sasthan Toll Plaza","geoCode":"13.476043,74.7127896","type":"Toll","subtype":"National","lane":{"id":"L02","direction":"N","readerId":""},"parking":{"floor":"","zone":"","slotId":"","readerId":""},"verificationResult":{"tsRead":"2025-09-18T12:11:23","signData":"","signAuth":"VALID","tagVerified":"NETC TAG","procRestrictionResult":"","vehicleAuth":"UNKNOWN","publicKeyCVV":"","txnCounter":"5485","txnStatus":"SUCCESS"}},"vehicle":{"tagId":"34161FA820328E4002A37C60","vehicleTId":"E20034120124FF000AC920EB","vehicleClassByAvc":"VC20","vehicleWeight":"","vehicleDetails":{"details":[{"name":"BANKID","value":"608032"},{"name":"EXCCODE","value":"00"},{"name":"VEHICLECLASS","value":"VC4"},{"name":"REGNUMBER","value":"FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ=="},{"name":"ISSUEDATE","value":"19-12-2019"},{"name":"COMVEHICLE","value":"F"},{"name":"TAGSTATUS","value":"A"}]}},"payer":{"addr":"34161FA820328E40071FFFC0@608032.iin.npci","name":"","type":"PERSON","amount":{"value":"90.00","curr":"INR"}},"payee":{"addr":"720301@iin.npci","name":"","type":"MERCHANT","amount":null}}'	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.490	API : POST:/reqPayService, timeConsumed : 74, responseHttpCode  : 202, appId : null	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.476	Kafka version: 3.1.2	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.476	Kafka commitId: f8c67dc3ae0a3265	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.476	Kafka startTimeMs: 1758177727476	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.474	ProducerConfig values: 
	acks = 1
	batch.size = 16384
	bootstrap.servers = [10.100.241.139:9092, 10.100.241.140:9092, 10.100.241.141:9092]
	buffer.memory = 33554432
	client.dns.lookup = use_all_dns_ips
	client.id = producer-2
	compression.type = snappy
	connections.max.idle.ms = 540000
	delivery.timeout.ms = 120000
	enable.idempotence = false
	interceptor.classes = [com.paytm.acquirer.netc.config.CorrelationIdProducerInterceptor]
	key.serializer = class org.apache.kafka.common.serialization.StringSerializer
	linger.ms = 20
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
	request.timeout.ms = 1000
	retries = 2147483647
	retry.backoff.ms = 100
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
	Sep 18, 2025 @ 12:12:07.474	sending to topic='fastag_issuer_staging_req_pay_xml' and data='{"namespace":"http://npci.org/etc/schema/","header":{"version":"1.0","timeStamp":"2025-09-09T12:18:56","organizationId":"ICIA","messageId":"ACQ000011894208925"},"metaTags":[{"name":"PAYREQSTART","value":"2025-09-09T12:18:55"},{"name":"PAYREQEND","value":"2025-09-09T12:18:55"}],"transaction":{"id":"00558295713515","referenceId":"257001L02090925121823","timeStamp":"2025-09-09T12:18:55","type":"DEBIT","riskScores":[{"provider":"NPCI","type":"TXNRISK","value":"00999"}]},"merchant":{"id":"257001","name":"Sasthan Toll Plaza","geoCode":"13.476043,74.7127896","type":"Toll","subtype":"National","lane":{"id":"L02","direction":"N"},"parking":{},"verificationResult":{"tsRead":"2025-09-18T12:11:23","signAuth":"VALID","tagVerified":"NETC TAG","vehicleAuth":"UNKNOWN","txnCounter":"5485","txnStatus":"SUCCESS"}},"vehicle":{"tagId":"34161FA820328E4002A37C60","vehicleTId":"E20034120124FF000AC920EB","vehicleClassByAvc":"VC20","vehicleDetails":{"details":[{"name":"BANKID","value":"608032"},{"name":"EXCCODE","value":"00"},{"name":"VEHICLECLASS","value":"VC4"},{"name":"REGNUMBER","value":"FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ=="},{"name":"ISSUEDATE","value":"19-12-2019"},{"name":"COMVEHICLE","value":"F"},{"name":"TAGSTATUS","value":"A"}]}},"payer":{"addr":"34161FA820328E40071FFFC0@608032.iin.npci","type":"PERSON","amount":{"value":"90.00","curr":"INR"}},"payee":{"addr":"720301@iin.npci","type":"MERCHANT"}}'	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.474	Idempotence will be disabled because acks is set to 1, not set to 'all'.	INFO	04f31803-8c3e-476b-91fa-051bc130df9b
	Sep 18, 2025 @ 12:12:07.424	reqPayService from NPCI with data : <?xml version="1.0" encoding="UTF-8"?><etc:ReqPay xmlns:etc="http://npci.org/etc/schema/"><Head msgId="ACQ000011894208925" orgId="ICIA" ts="2025-09-09T12:18:56" ver="1.0"/><Meta><Tag name="PAYREQSTART" value="2025-09-09T12:18:55"/><Tag name="PAYREQEND" value="2025-09-09T12:18:55"/></Meta><Txn id="00558295713515" orgTxnId="" refId="257001L02090925121823" refUrl="" ts="2025-09-09T12:18:55" type="DEBIT"><RiskScores><Score provider="NPCI" type="TXNRISK" value="00999"/></RiskScores></Txn><Merchant geoCode="13.476043,74.7127896" id="257001" name="Sasthan Toll Plaza" subtype="National" type="Toll"><Lane direction="N" id="L02" readerId=""/><Parking floor="" readerId="" slotId="" zone=""/><ReaderVerificationResult procRestrictionResult="" publicKeyCVV="" signAuth="VALID" signData="" tagVerified="NETC TAG" tsRead="2025-09-18T12:11:23" txnCounter="5485" txnStatus="SUCCESS" vehicleAuth="UNKNOWN"/></Merchant><Vehicle TID="E20034120124FF000AC920EB" avc="VC20" tagId="34161FA820328E4002A37C60" wim=""><VehicleDetails><Detail name="VEHICLECLASS" value="VC4"/><Detail name="REGNUMBER" value="FWErWPwwRIGBzEqc/kG4zAtQbEeSLuc+jH5rRL6c7zrGDPI6mYqe71mJhtfIc0nx+4dwmvw7ltr1E0NNk/zUTx9g/h8bc/ZQ/brouCWtJo6c+m1A2FX0hEENnKAwhQdxRLlBG8794JYk+j7HPePiFforClkbOrwf6Tioq66Fxs5jG7oUQ7qioF0AD4n2VzDZPAIvBucJOXuvQbYYO0EwiELxSmfT96rGS6lJeT8DlLnLKFAN/TRvuflHVYxkyJ7NJcndYv8UlFE44j89pnX+c9xoK2qLy8Jdud18HuMnU9IRc+aFa5+XH/ci+vv1pAXZrF7EJ5g+u8mhisjij2P7NQ=="/><Detail name="TAGSTATUS" value="A"/><Detail name="ISSUEDATE" value="19-12-2019"/><Detail name="EXCCODE" value="00"/><Detail name="BANKID" value="608032"/><Detail name="COMVEHICLE" value="F"/></VehicleDetails></Vehicle><Payer addr="34161FA820328E40071FFFC0@608032.iin.npci" name="" type="PERSON"><Amount curr="INR" value="90.00"/></Payer><Payee addr="720301@iin.npci" name="" type="MERCHANT"/></etc:ReqPay> 

