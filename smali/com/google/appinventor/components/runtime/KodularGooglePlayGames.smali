.class public Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Google Play Games component to connect to the Google Play Games services"
    iconName = "images/gameClient.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "core-runtime.jar",
        "core-runtime.aar",
        "play-services-games.jar",
        "play-services-games.aar",
        "play-services-base.jar",
        "play-services-base.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-tasks.jar",
        "play-services-tasks.aar",
        "play-services-auth-base.jar",
        "play-services-auth-base.aar",
        "play-services-auth.jar",
        "play-services-auth.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KodularGooglePlayGames"


# instance fields
.field private achievementCode:I

.field private achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

.field private componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private gamesClient:Lcom/google/android/gms/games/GamesClient;

.field private googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private isCompanion:Z

.field private leaderboardCode:I

.field private leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

.field private playersClient:Lcom/google/android/gms/games/PlayersClient;

.field private requestCode:I

.field private signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 72
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->requestCode:I

    .line 73
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementCode:I

    .line 74
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardCode:I

    .line 76
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanion:Z

    .line 82
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    .line 84
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 86
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 89
    move-object v2, v0

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 90
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v3, v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 92
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 93
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanion:Z

    .line 96
    :cond_0
    const-string/jumbo v2, "KodularGooglePlayGames"

    const-string/jumbo v3, "Google Play Games component initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)I
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementCode:I

    move v0, v1

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)I
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardCode:I

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->onConnected(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->startSignInIntent()V

    return-void
.end method

.method private isCompanionMode()Z
    .locals 7

    .prologue
    .line 248
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanion:Z

    if-eqz v2, :cond_0

    .line 250
    :try_start_0
    new-instance v2, Lcom/google/appinventor/components/runtime/Notifier;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string/jumbo v3, "Please export your project as an apk and test google play games on a real device."

    const-string/jumbo v4, "Companion error"

    const-string/jumbo v5, "OK"

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .line 256
    :cond_0
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanion:Z

    move v0, v2

    return v0

    .line 251
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 252
    const-string/jumbo v2, "KodularGooglePlayGames"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private isSignedIn()Z
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

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

.method private onConnected(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 6

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "KodularGooglePlayGames"

    const-string/jumbo v3, "Connected to Google APIs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 315
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    .line 316
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    .line 317
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/games/Games;->getGamesClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/GamesClient;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->gamesClient:Lcom/google/android/gms/games/GamesClient;

    .line 318
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/games/Games;->getPlayersClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->playersClient:Lcom/google/android/gms/games/PlayersClient;

    .line 320
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->gamesClient:Lcom/google/android/gms/games/GamesClient;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/games/GamesClient;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 321
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->gamesClient:Lcom/google/android/gms/games/GamesClient;

    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Lcom/google/android/gms/games/GamesClient;->setGravityForPopups(I)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 322
    return-void
.end method

.method private onDisconnected()V
    .locals 3

    .prologue
    .line 325
    move-object v0, p0

    const-string/jumbo v1, "KodularGooglePlayGames"

    const-string/jumbo v2, "onDisconnected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 327
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    .line 328
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    .line 329
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->gamesClient:Lcom/google/android/gms/games/GamesClient;

    .line 330
    return-void
.end method

.method private signInSilently(Z)V
    .locals 10

    .prologue
    .line 264
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 265
    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getScopeArray()[Lcom/google/android/gms/common/api/Scope;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->hasPermissions(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;[Lcom/google/android/gms/common/api/Scope;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->onConnected(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 290
    :goto_0
    return-void

    .line 270
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->silentSignIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v5, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move v8, v1

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;-><init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;Z)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 290
    goto :goto_0
.end method

.method private signOut()V
    .locals 7

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$5;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$5;-><init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 309
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->onDisconnected()V

    .line 310
    return-void
.end method

.method private startSignInIntent()V
    .locals 6

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v2

    iput v2, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->requestCode:I

    .line 295
    const-string/jumbo v1, "KodularGooglePlayGames"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Activity Started: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->requestCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 297
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->requestCode:I

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 298
    return-void
.end method


# virtual methods
.method public GetPlayer()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current player"
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 195
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->playersClient:Lcom/google/android/gms/games/PlayersClient;

    if-eqz v1, :cond_1

    .line 196
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->playersClient:Lcom/google/android/gms/games/PlayersClient;

    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$3;-><init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 224
    :cond_1
    goto :goto_0
.end method

.method public GooglePlayGamesAppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 245
    return-void
.end method

.method public GotPlayer(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got player info"
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object v6, v0

    const-string/jumbo v7, "GotPlayer"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    move v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x3

    move-wide v11, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v6

    .line 239
    return-void
.end method

.method public IncrementAchievement(Ljava/lang/String;I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Increment an achievement."
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    if-eqz v3, :cond_1

    .line 117
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/games/AchievementsClient;->increment(Ljava/lang/String;I)V

    .line 119
    :cond_1
    goto :goto_0
.end method

.method public IsSignedIn()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Is user signed in?"
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isSignedIn()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ShowAchievements()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows Achievement."
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 125
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    if-eqz v1, :cond_2

    .line 126
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementCode:I

    if-nez v1, :cond_1

    .line 127
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v2

    iput v2, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementCode:I

    .line 130
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    invoke-virtual {v1}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$1;-><init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V

    .line 131
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 138
    :cond_2
    goto :goto_0
.end method

.method public ShowLeaderboard(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows Leaderboard."
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    :goto_0
    return-void

    .line 154
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    if-eqz v2, :cond_2

    .line 155
    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardCode:I

    if-nez v2, :cond_1

    .line 156
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardCode:I

    .line 159
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/games/LeaderboardsClient;->getLeaderboardIntent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$2;-><init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V

    .line 160
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 167
    :cond_2
    goto :goto_0
.end method

.method public SignIn(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign in the user. useLastAccount, true: use the last signed in account if possible, false: open a screen to choose for an account"
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    .line 174
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signInSilently(Z)V

    goto :goto_0

    .line 176
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->startSignInIntent()V

    .line 177
    goto :goto_0
.end method

.method public SignOut()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign out the user."
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signOut()V

    .line 184
    goto :goto_0
.end method

.method public SignedIn(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User signed in."
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "SignedIn"

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

    .line 229
    return-void
.end method

.method public SignedOut()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User signed out."
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "SignedOut"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 234
    return-void
.end method

.method public SubmitScore(Ljava/lang/String;I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Submits user score to leaderboard."
    .end annotation

    .prologue
    .line 143
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v1

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    if-eqz v4, :cond_1

    .line 146
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    move-object v5, v2

    move v6, v3

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScore(Ljava/lang/String;J)V

    .line 148
    :cond_1
    goto :goto_0
.end method

.method public UnlockAchievement(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unlock an achievement."
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 107
    move-object v2, v4

    if-eqz v3, :cond_1

    .line 108
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V

    .line 110
    :cond_1
    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signInSilently(Z)V

    .line 335
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 9

    .prologue
    .line 339
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->requestCode:I

    if-ne v4, v5, :cond_1

    .line 340
    sget-object v4, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    move-object v5, v3

    invoke-interface {v4, v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 342
    move-object v1, v5

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v4

    move-object v1, v4

    .line 346
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->onConnected(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 347
    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    const-string/jumbo v4, "KodularGooglePlayGames"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "signInResult:failed code="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 350
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->onDisconnected()V

    .line 353
    :cond_1
    goto :goto_0
.end method
