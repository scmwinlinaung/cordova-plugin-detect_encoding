import UIKit

@objc(detect_encoding) 
class detect_encoding : CDVPlugin {
    
    @objc(detectEncodingFormat:)
    func detectEncodingFormat(command: CDVInvokedUrlCommand) {
        var returnMessage = "";
        var data = command.argument
        let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: returnMessage);
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
    }
}
extension detect_encoding {
    func isBINARY(text: string) {
        var i = 0;
        var len = data && data.length;
        var c;

        for (; i < len; i++) {
          c = data[i];
          if (c > 0xFF) {
            return false;
          }

          if ((c >= 0x00 && c <= 0x07) || c === 0xFF) {
            return true;
          }
        }

        return false;
    }
    func isASCII(text: string) {
        return;
    }
    func isJIS(text: string) {
        return;
    }
    func isEUCJP(text: string) {
        return;
    }
    func isSJIS(text: string) {
        return;
    }
    func isUTF8(text: string) {
        return;
    }
    func isUTF16(text: string) {
        return;
    }
    func isUTF16BE(text: string) {
        return;
    }
    func isUTF16LE(text: string) {
        return;
    }
    func isUTF32(text: string) {
        return;
    }
    func isUNICODE(text: string) {
        return;
    }
    
}
