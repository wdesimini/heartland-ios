import Foundation

@objcMembers
public class HpsWiseCubeBatchCloseBuilder : HpsWiseCubeBaseBuilder, GMSBatchCloseBuilder {
    public required init() {
        super.init()
        self.transactionType = .batchClose
    }
    
    public override func buildRequest() -> Transaction? {
        return GMSRequestHelper.buildBatchCloseRequest(builder: self)
    }
    
    public override func mapResponse(_ data: HpsTerminalResponse, _ result: TransactionResult, _ response: TransactionResponse?) -> HpsTerminalResponse {
        return GMSResponseHelper.mapBatchCloseResponse(data, result, response)
    }
}