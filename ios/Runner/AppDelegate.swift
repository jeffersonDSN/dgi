import UIKit
import Flutter
import AVFoundation

@main
@objc class AppDelegate: FlutterAppDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller = window?.rootViewController as! FlutterViewController
    let cameraChannel = FlutterMethodChannel(name: "com.example.native/camera",
                                             binaryMessenger: controller.binaryMessenger)

    cameraChannel.setMethodCallHandler { (call: FlutterMethodCall, result: @escaping FlutterResult) in
      if call.method == "takePhoto" {
        self.openCamera(result: result)
      } else {
        result(FlutterMethodNotImplemented)
      }
    }

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func openCamera(result: @escaping FlutterResult) {
    guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
      result(FlutterError(code: "UNAVAILABLE",
                          message: "Camera not available",
                          details: nil))
      return
    }

    let picker = UIImagePickerController()
    picker.sourceType = .camera
    picker.delegate = self
    picker.allowsEditing = false

    self.cameraResult = result
    self.window?.rootViewController?.present(picker, animated: true, completion: nil)
  }

  private var cameraResult: FlutterResult?

  func imagePickerController(_ picker: UIImagePickerController,
                            didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
      picker.dismiss(animated: true, completion: nil)

      if let image = info[.originalImage] as? UIImage,
        let imageData = image.jpegData(compressionQuality: 0.8) {
          let uint8List = FlutterStandardTypedData(bytes: imageData)
          cameraResult?(uint8List)
      } else {
          cameraResult?(FlutterError(code: "ERROR", message: "Failed to capture image", details: nil))
      }
      cameraResult = nil
  }


  func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    picker.dismiss(animated: true, completion: nil)
    cameraResult?("")
    cameraResult = nil
  }
}
