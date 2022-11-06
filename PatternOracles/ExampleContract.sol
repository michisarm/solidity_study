pragma solidity ^0.4.25;
import "github.com/provable-things/ethereum-api/blob/master/contracts/solc-v0.4.25/provableAPI.sol";


contract ExampleContract is usingProvable {

   string public ETHUSD;
   event LogConstructorInitiated(string nextStep);
   event LogPriceUpdated(string price);
   event LogNewProvableQuery(string description);

   function ExampleContract() payable {
       LogConstructorInitiated("Constructor was initiated. Call 'updatePrice()' to send the Provable Query.");
   }

   // 오라클이 결과를 계약에 보내는 데 사용, myid는 첫번째 함수에 저장되어 결과를 이전 요청에 연결하는데 사용할 수 있음 
   function __callback(bytes32 myid, string result) {
	// 호출 엔티티가 실제 provable인지 확인
       if (msg.sender != provable_cbAddress()) revert();
       ETHUSD = result;
       LogPriceUpdated(result);
   }


   function updatePrice() payable {
       if (provable_getPrice("URL") > this.balance) {
           LogNewProvableQuery("Provable query was NOT sent, please add some ETH to cover for the query fee");
       } else {
           LogNewProvableQuery("Provable query was sent, standing by for the answer..");
           provable_query("URL", "json(https://api.pro.coinbase.com/products/ETH-USD/ticker).price");
       }
   }
}
