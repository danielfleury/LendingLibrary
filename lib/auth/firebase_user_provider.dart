import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BCRPLendingLibraryFirebaseUser {
  BCRPLendingLibraryFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BCRPLendingLibraryFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BCRPLendingLibraryFirebaseUser> bCRPLendingLibraryFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BCRPLendingLibraryFirebaseUser>(
      (user) {
        currentUser = BCRPLendingLibraryFirebaseUser(user);
        return currentUser!;
      },
    );
