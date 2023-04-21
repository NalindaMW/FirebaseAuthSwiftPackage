import Firebase

public struct FirebaseAuthManager {
    
    public func signIn(with email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            NetworkManger.sendWelcomeEmail(to: email)
        }
    }
}
