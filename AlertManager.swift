//
//  AlertManager.swift
//  Picsart-Academy-Assistant
//
//  Created by Aren Musayelyan on 17.05.23.
//

import UIKit

class AlertManager {
    private static func showBasicAlert(on vc: UIViewController, title: String, message: String?){
        DispatchQueue.main.async() {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            
            vc.present(alert, animated: true)
        }
    }
}


// TODO: - Show Validation Alerts
extension AlertManager {
    
    public static func showInvalidEmailAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, title: "Invalid Email", message: "Please enter a valid email")
    }
    public static func showInvalidPasswordAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, title: "Invalid Password", message: "Please enter a valid password")
    }
    public static func showInvalidUserNameAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, title: "Invalid UserName", message: "Please enter a valid userName")
    }
}

// TODO: - Registration Erorrs
extension AlertManager {
    
    public static func showRegistrationErrorAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, title: "Unknown registration error", message: nil)
    }
    public static func showRegistrationErrorAlert(on vc: UIViewController, error: Error) {
        showBasicAlert(on: vc, title: "Registration error", message: "\(error.localizedDescription)")
    }
}

// TODO: - Log In Erorrs
extension AlertManager {
    
    public static func showSignInErrorAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, title: "Unknown error Signing In", message: nil)
    }
    public static func showSignInErrorAlert(on vc: UIViewController, error: Error) {
        showBasicAlert(on: vc, title: "Registration error", message: "\(error.localizedDescription)")
    }
}

// TODO: - Logout Errors
extension AlertManager {
    public static func showLogoutErrorAlert(on vc: UIViewController, error: Error) {
        showBasicAlert(on: vc, title: "Logout error", message: "\(error.localizedDescription)")
    }
}

// TODO: - Forgot Password Errors
extension AlertManager {
    
    public static func showPasswordResetSent(on vc: UIViewController) {
        showBasicAlert(on: vc, title: "Password Reset Sent", message: nil)
    }
    public static func showErrorSendingPasswordReset(on vc: UIViewController, error: Error) {
        showBasicAlert(on: vc, title: "Error Sending Password Reset", message: "\(error.localizedDescription)")
    }
}

// TODO: - Fetching User Errors

extension AlertManager {
    public static func showFetchingUserError(on vc: UIViewController, error: Error) {
        showBasicAlert(on: vc, title: "Error Fetching User", message: "\(error.localizedDescription)")
    }
    public static func showUnknownFetchingUserError(on vc: UIViewController) {
        showBasicAlert(on: vc, title: "Unknown Error Fetching User", message: nil)
    }
}

