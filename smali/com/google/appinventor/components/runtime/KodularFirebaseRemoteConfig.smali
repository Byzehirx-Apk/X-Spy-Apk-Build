.class public Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Remote Config"
    iconName = "images/firebaseDB.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "firebase-abt.jar",
        "firebase-abt.aar",
        "firebase-analytics.jar",
        "firebase-analytics.aar",
        "firebase-common.jar",
        "firebase-common.aar",
        "firebase-config.jar",
        "firebase-config.aar",
        "firebase-core.jar",
        "firebase-core.aar",
        "firebase-iid.jar",
        "firebase-iid.aar",
        "firebase-iid-interop.jar",
        "firebase-iid-interop.aar",
        "firebase-measurement-connector.jar",
        "firebase-measurement-connector.aar",
        "play-services-ads-identifier.jar",
        "play-services-ads-identifier.aar",
        "play-services-base.jar",
        "play-services-base.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-measurement.jar",
        "play-services-measurement.aar",
        "play-services-measurement-api.jar",
        "play-services-measurement-api.aar",
        "play-services-measurement-base.jar",
        "play-services-measurement-base.aar",
        "play-services-measurement-impl.jar",
        "play-services-measurement-impl.aar",
        "play-services-measurement-sdk.jar",
        "play-services-measurement-sdk.aar",
        "play-services-measurement-sdk-api.jar",
        "play-services-measurement-sdk-api.aar",
        "play-services-phenotype.jar",
        "play-services-phenotype.aar",
        "play-services-stats.jar",
        "play-services-stats.aar",
        "play-services-tasks.jar",
        "play-services-tasks.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.WAKE_LOCK",
        "com.google.android.c2dm.permission.RECEIVE",
        "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 87
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 84
    move-object v3, v1

    const-wide/32 v4, 0xa8c0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:J

    .line 88
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->context:Landroid/content/Context;

    .line 89
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->activity:Landroid/app/Activity;

    .line 91
    move-object v3, v1

    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 92
    return-void
.end method


# virtual methods
.method public CacheExpiration()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Time how long the data keeps on the device in ms"
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:J

    move-wide v0, v1

    return-wide v0
.end method

.method public CacheExpiration(J)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "43200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 141
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, v2

    const-wide/16 v6, 0xe10

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const-wide/16 v4, 0xe10

    move-wide v2, v4

    .line 142
    :cond_0
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:J

    .line 144
    new-instance v4, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    move-object v5, v1

    iget-wide v5, v5, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:J

    invoke-virtual {v4, v5, v6}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v4

    move-object v2, v4

    .line 145
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    .line 146
    return-void
.end method

.method public Fetch()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Fetches parameter values for your app"
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchAndActivate()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig$1;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 106
    return-void
.end method

.method public FetchFailed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the fetch failed"
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "FetchFailed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 116
    return-void
.end method

.method public FetchSuccess()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the fetch was successful"
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "FetchSuccess"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 111
    return-void
.end method

.method public GetBoolean(Ljava/lang/String;)Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets a boolean value corresponding to the specified key"
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public GetNumber(Ljava/lang/String;)D
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets a number value corresponding to the specified key"
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public GetText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets a text value corresponding to the specified key"
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
