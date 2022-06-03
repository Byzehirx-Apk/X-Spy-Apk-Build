.class public Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Authentication"
    iconName = "images/firebaseDB.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "firebase-auth.jar",
        "firebase-auth.aar",
        "firebase-auth-interop.jar",
        "firebase-auth-interop.aar",
        "firebase-common.jar",
        "firebase-common.aar",
        "core-runtime.jar",
        "core-runtime.aar",
        "play-services-auth.jar",
        "play-services-auth.aar",
        "play-services-auth-api-phone.jar",
        "play-services-auth-api-phone.aar",
        "play-services-auth-base.jar",
        "play-services-auth-base.aar",
        "play-services-base.jar",
        "play-services-base.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-flags.jar",
        "play-services-flags.aar",
        "play-services-tasks.jar",
        "play-services-tasks.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.WAKE_LOCK",
        "com.google.android.c2dm.permission.RECEIVE"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KodularFirebaseAuth"

.field private static final PROVIDER_EMAIL_PASSWORD:Ljava/lang/String; = "EmailPassword"

.field private static final PROVIDER_GOOGLE:Ljava/lang/String; = "Google"

.field private static final PROVIDER_PHONE_NUMBER:Ljava/lang/String; = "PhoneNumber"

.field private static final PROVIDER_PLAY_GAMES:Ljava/lang/String; = "Play Games"

.field private static final STORAGE_TAG:Ljava/lang/String; = "KodularFirebaseAuth"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private googleRequestCode:I

.field private isCompanion:Z

.field private mAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private mPhoneAuthCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

.field private mPlayGamesSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private mVerificationId:Ljava/lang/String;

.field private phoneNewUser:Z

.field private playGamesRequestCode:I

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 83
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->isCompanion:Z

    .line 87
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 88
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPlayGamesSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 91
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mVerificationId:Ljava/lang/String;

    .line 92
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->phoneNewUser:Z

    .line 94
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->googleRequestCode:I

    .line 95
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->playGamesRequestCode:I

    .line 101
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    .line 102
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->context:Landroid/content/Context;

    .line 104
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 105
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->isCompanion:Z

    .line 108
    :cond_0
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->context:Landroid/content/Context;

    const-string/jumbo v4, "KodularFirebaseAuth"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->preferences:Landroid/content/SharedPreferences;

    .line 110
    move-object v2, v0

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 112
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$1;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPhoneAuthCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    .line 133
    return-void
.end method

.method private CompanionToast()V
    .locals 4

    .prologue
    .line 514
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->isCompanion:Z

    if-eqz v1, :cond_0

    .line 515
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->context:Landroid/content/Context;

    const-string/jumbo v2, "Firebase Auth doesn\'t work in the Companion"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 517
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithPhoneNumber(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->preferences:Landroid/content/SharedPreferences;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mVerificationId:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    move-object v0, v1

    return-object v0
.end method

.method private firebaseAuthWithCredential(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$9;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$9;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 451
    return-void
.end method

.method private firebaseAuthWithGoogle(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 7

    .prologue
    .line 413
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "KodularFirebaseAuth"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "firebaseAuthWithGoogle:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 415
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/firebase/auth/GoogleAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v2

    move-object v1, v2

    .line 417
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "Google"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithCredential(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method private firebaseAuthWithPhoneNumber(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 9

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->phoneNewUser:Z

    if-eqz v3, :cond_0

    .line 455
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$10;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$10;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    .line 456
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 490
    :goto_0
    return-void

    .line 475
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 477
    move-object v2, v4

    if-eqz v3, :cond_1

    .line 478
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/firebase/auth/FirebaseUser;->updatePhoneNumber(Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$2;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 490
    :cond_1
    goto :goto_0
.end method

.method private firebaseAuthWithPlayGames(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 7

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "KodularFirebaseAuth"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "firebaseAuthWithPlayGames:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 423
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 425
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 426
    move-object v2, v1

    invoke-static {v2}, Lcom/google/firebase/auth/PlayGamesAuthProvider;->getCredential(Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v2

    move-object v1, v2

    .line 428
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "Play Games"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithCredential(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V

    .line 429
    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "Play Games"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->LoginFailed(Ljava/lang/String;)V

    .line 432
    goto :goto_0
.end method

.method private getGoogleSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 6

    .prologue
    .line 493
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez v2, :cond_0

    .line 494
    new-instance v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v3, v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->context:Landroid/content/Context;

    const-string/jumbo v4, "default_web_client_id"

    .line 495
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v2

    .line 496
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v2

    .line 497
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    move-object v1, v2

    .line 499
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->context:Landroid/content/Context;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 502
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-object v0, v2

    return-object v0
.end method

.method private getPlayGamesSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 5

    .prologue
    .line 506
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPlayGamesSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez v1, :cond_0

    .line 507
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->context:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPlayGamesSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 510
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPlayGamesSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public CurrentUserFailed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the current Firebase User failed to load"
    .end annotation

    .prologue
    .line 409
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "CurrentUserFailed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 410
    return-void
.end method

.method public CurrentUserSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the current Firebase User was successful loaded"
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    const-string/jumbo v7, "CurrentUserSuccess"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    if-eqz v11, :cond_0

    move-object v11, v1

    :goto_0
    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    if-eqz v11, :cond_1

    move-object v11, v2

    :goto_1
    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move-object v11, v3

    if-eqz v11, :cond_2

    move-object v11, v3

    :goto_2
    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    move-object v11, v4

    if-eqz v11, :cond_3

    move-object v11, v4

    :goto_3
    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x4

    move-object v11, v5

    if-eqz v11, :cond_4

    move-object v11, v5

    :goto_4
    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v6

    .line 405
    return-void

    .line 404
    :cond_0
    const-string/jumbo v11, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v11, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v11, ""

    goto :goto_2

    :cond_3
    const-string/jumbo v11, ""

    goto :goto_3

    :cond_4
    const-string/jumbo v11, ""

    goto :goto_4
.end method

.method public EmailPasswordLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to let the user sign in with Email and Password"
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CompanionToast()V

    .line 154
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$3;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$3;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 165
    return-void
.end method

.method public EmailPasswordSignUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new user by Email and Password"
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CompanionToast()V

    .line 170
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/auth/FirebaseAuth;->createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$4;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$4;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 181
    return-void
.end method

.method public GetCurrentUser()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to get the user that is signed in"
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 144
    move-object v1, v3

    if-eqz v2, :cond_1

    .line 145
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseUser;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v7, ""

    :goto_0
    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CurrentUserSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_1
    return-void

    .line 145
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 147
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CurrentUserFailed()V

    .line 149
    goto :goto_1
.end method

.method public GetIdToken()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the id token from the current user."
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 328
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 329
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/firebase/auth/FirebaseUser;->getIdToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$7;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$7;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->GotIdToken(Ljava/lang/String;)V

    .line 343
    goto :goto_0
.end method

.method public GoogleSignIn()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to let the user sign in with Google"
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CompanionToast()V

    .line 190
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->googleRequestCode:I

    if-nez v1, :cond_0

    .line 191
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v2

    iput v2, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->googleRequestCode:I

    .line 194
    :cond_0
    const-string/jumbo v1, "KodularFirebaseAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Activity Started: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->googleRequestCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 196
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->getGoogleSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->googleRequestCode:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 197
    return-void
.end method

.method public GotIdToken(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the \'Get Id Token\' got a result. If there was a error it returns a empty text."
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "GotIdToken"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 363
    return-void
.end method

.method public IsSignedIn()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if the user is signed in"
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public LoginFailed(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the Firebase Login failed"
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "LoginFailed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 378
    return-void
.end method

.method public LoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the Firebase Login was successful"
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    const-string/jumbo v8, "LoginSuccess"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v2

    if-eqz v12, :cond_0

    move-object v12, v2

    :goto_0
    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v3

    if-eqz v12, :cond_1

    move-object v12, v3

    :goto_1
    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    move-object v12, v4

    if-eqz v12, :cond_2

    move-object v12, v4

    :goto_2
    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x4

    move-object v12, v5

    if-eqz v12, :cond_3

    move-object v12, v5

    :goto_3
    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x5

    move-object v12, v6

    if-eqz v12, :cond_4

    move-object v12, v6

    :goto_4
    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v7

    .line 373
    return-void

    .line 372
    :cond_0
    const-string/jumbo v12, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v12, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v12, ""

    goto :goto_2

    :cond_3
    const-string/jumbo v12, ""

    goto :goto_3

    :cond_4
    const-string/jumbo v12, ""

    goto :goto_4
.end method

.method public Logout()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Log the current user out"
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    .line 263
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->getGoogleSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 264
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->getPlayGamesSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 265
    return-void
.end method

.method public PhoneNumberSignIn(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to let the user sign in with a Phone Number"
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CompanionToast()V

    .line 222
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->phoneNewUser:Z

    .line 223
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v2}, Lcom/google/firebase/auth/PhoneAuthProvider;->getInstance(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthProvider;

    move-result-object v2

    move-object v3, v1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPhoneAuthCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    invoke-virtual/range {v2 .. v8}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)V

    .line 224
    return-void
.end method

.method public PlayGamesSignIn()V
    .locals 6

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CompanionToast()V

    .line 206
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->playGamesRequestCode:I

    if-nez v1, :cond_0

    .line 207
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v2

    iput v2, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->playGamesRequestCode:I

    .line 210
    :cond_0
    const-string/jumbo v1, "KodularFirebaseAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Activity Started: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->playGamesRequestCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 212
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->getPlayGamesSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->playGamesRequestCode:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    return-void
.end method

.method public ResetPasswordEmailDone(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the \'Send Reset Password Email\' got a result. Returns true if the reset email was send."
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ResetPasswordEmailDone"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 368
    return-void
.end method

.method public SendResetPasswordEmail(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the id token from the current user."
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/firebase/auth/FirebaseAuth;->sendPasswordResetEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$8;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$8;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    .line 348
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 358
    return-void
.end method

.method public SignUpFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the Firebase Sign Up failed"
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "SignUpFailed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 383
    return-void
.end method

.method public SignUpSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the Firebase Sign Up failed"
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    const-string/jumbo v8, "SignUpSuccess"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v2

    if-eqz v12, :cond_0

    move-object v12, v2

    :goto_0
    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v3

    if-eqz v12, :cond_1

    move-object v12, v3

    :goto_1
    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    move-object v12, v4

    if-eqz v12, :cond_2

    move-object v12, v4

    :goto_2
    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x4

    move-object v12, v5

    if-eqz v12, :cond_3

    move-object v12, v5

    :goto_3
    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x5

    move-object v12, v6

    if-eqz v12, :cond_4

    move-object v12, v6

    :goto_4
    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v7

    .line 388
    return-void

    .line 387
    :cond_0
    const-string/jumbo v12, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v12, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v12, ""

    goto :goto_2

    :cond_3
    const-string/jumbo v12, ""

    goto :goto_3

    :cond_4
    const-string/jumbo v12, ""

    goto :goto_4
.end method

.method public UpdateEmail(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to update the email of the current user (The user must have been recently signed in)"
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 297
    move-object v2, v4

    if-eqz v3, :cond_0

    .line 298
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/firebase/auth/FirebaseUser;->updateEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$6;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$6;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    move-object v3, v0

    const-string/jumbo v4, "Email"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->UserUpdateFailed(Ljava/lang/String;)V

    .line 311
    goto :goto_0
.end method

.method public UpdatePhoneNumber(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to update the phone number of the current user (The user must have been recently signed in)"
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    .line 317
    if-eqz v2, :cond_0

    .line 318
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->phoneNewUser:Z

    .line 319
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v2}, Lcom/google/firebase/auth/PhoneAuthProvider;->getInstance(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthProvider;

    move-result-object v2

    move-object v3, v1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPhoneAuthCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    invoke-virtual/range {v2 .. v8}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "PhoneNumber"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->UserUpdateFailed(Ljava/lang/String;)V

    .line 323
    goto :goto_0
.end method

.method public UpdateProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to update the profile of the current user (The user must have been recently signed in)"
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 272
    move-object v3, v5

    if-eqz v4, :cond_0

    .line 273
    new-instance v4, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;-><init>()V

    move-object v5, v1

    .line 274
    invoke-virtual {v4, v5}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    move-result-object v4

    move-object v5, v2

    .line 275
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->setPhotoUri(Landroid/net/Uri;)Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    move-result-object v4

    .line 276
    invoke-virtual {v4}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->build()Lcom/google/firebase/auth/UserProfileChangeRequest;

    move-result-object v4

    move-object v1, v4

    .line 278
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/firebase/auth/FirebaseUser;->updateProfile(Lcom/google/firebase/auth/UserProfileChangeRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$5;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$5;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    .line 288
    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    move-object v4, v0

    const-string/jumbo v5, "Profile"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->UserUpdateFailed(Ljava/lang/String;)V

    .line 291
    goto :goto_0
.end method

.method public UserUpdateFailed(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when updating of the user failed"
    .end annotation

    .prologue
    .line 398
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "UserUpdateFailed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 399
    return-void
.end method

.method public UserUpdateSuccess(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when updating of the user was successful"
    .end annotation

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "UserUpdateSuccess"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 394
    return-void
.end method

.method public VerifyEmail()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Verify the Email"
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 251
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 252
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->newBuilder()Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 253
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const-string/jumbo v6, "16"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->setAndroidPackageName(Ljava/lang/String;ZLjava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v3

    .line 254
    invoke-virtual {v3}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->build()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v3

    move-object v2, v3

    .line 255
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/firebase/auth/FirebaseUser;->sendEmailVerification(Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 257
    :cond_0
    return-void
.end method

.method public VerifyPhoneCode(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Verify the SMS code"
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mVerificationId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 232
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "VerificationId"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mVerificationId:Ljava/lang/String;

    .line 235
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mVerificationId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 236
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mVerificationId:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/firebase/auth/PhoneAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object v2

    move-object v1, v2

    .line 238
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithPhoneNumber(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 241
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "VerificationId"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 9

    .prologue
    .line 521
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    const-string/jumbo v4, "KodularFirebaseAuth"

    const-string/jumbo v5, "Result Returned: "

    move v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 523
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->googleRequestCode:I

    if-ne v4, v5, :cond_0

    .line 525
    const-string/jumbo v4, "KodularFirebaseAuth"

    const-string/jumbo v5, "Google Sign in Result Returned"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 527
    move-object v4, v3

    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    move-object v1, v4

    .line 531
    move-object v4, v1

    :try_start_0
    const-class v5, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object v1, v4

    .line 532
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithGoogle(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .line 554
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 534
    const-string/jumbo v4, "KodularFirebaseAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Google sign in failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 535
    move-object v4, v0

    const-string/jumbo v5, "Google"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->LoginFailed(Ljava/lang/String;)V

    .line 538
    goto :goto_0

    :cond_0
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->playGamesRequestCode:I

    if-ne v4, v5, :cond_1

    .line 540
    const-string/jumbo v4, "KodularFirebaseAuth"

    const-string/jumbo v5, "Play Games Sign in Result Returned"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 542
    move-object v4, v3

    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    move-object v1, v4

    .line 546
    move-object v4, v1

    :try_start_1
    const-class v5, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object v1, v4

    .line 547
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithPlayGames(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_1
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_1 .. :try_end_1} :catch_1

    .line 551
    goto :goto_0

    .line 548
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 549
    const-string/jumbo v4, "KodularFirebaseAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Play Games sign in failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 550
    move-object v4, v0

    const-string/jumbo v5, "Play Games"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->LoginFailed(Ljava/lang/String;)V

    .line 554
    :cond_1
    goto :goto_0
.end method
