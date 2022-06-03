.class public final Landroidx/browser/customtabs/CustomTabsSession;
.super Ljava/lang/Object;
.source "CustomTabsSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSession"


# instance fields
.field private final mCallback:Landroid/support/customtabs/ICustomTabsCallback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/support/customtabs/ICustomTabsService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V
    .locals 8

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSession;
    move-object v1, p1

    .local v1, "service":Landroid/support/customtabs/ICustomTabsService;
    move-object v2, p2

    .local v2, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v3, p3

    .local v3, "componentName":Landroid/content/ComponentName;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v4, v0

    new-instance v5, Ljava/lang/Object;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Landroidx/browser/customtabs/CustomTabsSession;->mLock:Ljava/lang/Object;

    .line 65
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    .line 66
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    .line 67
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/browser/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    .line 68
    return-void
.end method

.method public static createMockSessionForTesting(Landroid/content/ComponentName;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 7
    .param p0    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v1, Landroidx/browser/customtabs/CustomTabsSession;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    new-instance v4, Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;-><init>()V

    move-object v5, v0

    invoke-direct {v2, v3, v4, v5}, Landroidx/browser/customtabs/CustomTabsSession;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    move-object v0, v1

    .end local v0    # "componentName":Landroid/content/ComponentName;
    return-object v0
.end method


# virtual methods
.method getBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSession;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    return-object v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSession;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    move-object v0, v1

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    return-object v0
.end method

.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSession;
    move-object v1, p1

    .local v1, "url":Landroid/net/Uri;
    move-object v2, p2

    .local v2, "extras":Landroid/os/Bundle;
    move-object v3, p3

    .local v3, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/support/customtabs/ICustomTabsService;->mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    .line 90
    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :goto_0
    return v0

    .line 89
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 90
    .local v4, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public postMessage(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 11

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSession;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "extras":Landroid/os/Bundle;
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsSession;->mLock:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    monitor-enter v6

    .line 199
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    move-object v7, v0

    iget-object v7, v7, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    move-object v8, v1

    move-object v9, v2

    invoke-interface {v6, v7, v8, v9}, Landroid/support/customtabs/ICustomTabsService;->postMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    move-object v7, v3

    :try_start_1
    monitor-exit v7

    move v0, v6

    .line 201
    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :goto_0
    return v0

    .line 200
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 201
    .local v4, "e":Landroid/os/RemoteException;
    const/4 v6, -0x2

    move-object v7, v3

    monitor-exit v7

    move v0, v6

    goto :goto_0

    .line 203
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public requestPostMessageChannel(Landroid/net/Uri;)Z
    .locals 6

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSession;
    move-object v1, p1

    .local v1, "postMessageOrigin":Landroid/net/Uri;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    move-object v4, v0

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Landroid/support/customtabs/ICustomTabsService;->requestPostMessageChannel(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 179
    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :goto_0
    return v0

    .line 178
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 179
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 10
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSession;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/Bitmap;
    move-object v2, p2

    .local v2, "description":Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v3, v6

    .line 105
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v6, v3

    const-string/jumbo v7, "android.support.customtabs.customaction.ICON"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    move-object v6, v3

    const-string/jumbo v7, "android.support.customtabs.customaction.DESCRIPTION"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v6, Landroid/os/Bundle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v4, v6

    .line 109
    .local v4, "metaBundle":Landroid/os/Bundle;
    move-object v6, v4

    const-string/jumbo v7, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 111
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    move-object v7, v0

    iget-object v7, v7, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v0, v6

    .line 113
    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :goto_0
    return v0

    .line 112
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 113
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public setSecondaryToolbarViews(Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z
    .locals 10
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSession;
    move-object v1, p1

    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    move-object v2, p2

    .local v2, "clickableIDs":[I
    move-object v3, p3

    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/os/Bundle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v4, v6

    .line 129
    .local v4, "bundle":Landroid/os/Bundle;
    move-object v6, v4

    const-string/jumbo v7, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 130
    move-object v6, v4

    const-string/jumbo v7, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 131
    move-object v6, v4

    const-string/jumbo v7, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    move-object v7, v0

    iget-object v7, v7, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v0, v6

    .line 135
    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :goto_0
    return v0

    .line 134
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 135
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public setToolbarItem(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 11
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSession;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "icon":Landroid/graphics/Bitmap;
    move-object v3, p3

    .local v3, "description":Ljava/lang/String;
    new-instance v7, Landroid/os/Bundle;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v4, v7

    .line 152
    .local v4, "bundle":Landroid/os/Bundle;
    move-object v7, v4

    const-string/jumbo v8, "android.support.customtabs.customaction.ID"

    move v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    move-object v7, v4

    const-string/jumbo v8, "android.support.customtabs.customaction.ICON"

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 154
    move-object v7, v4

    const-string/jumbo v8, "android.support.customtabs.customaction.DESCRIPTION"

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v7, Landroid/os/Bundle;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v5, v7

    .line 157
    .local v5, "metaBundle":Landroid/os/Bundle;
    move-object v7, v5

    const-string/jumbo v8, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    move-object v8, v0

    iget-object v8, v8, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    move v0, v7

    .line 161
    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :goto_0
    return v0

    .line 160
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 161
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public validateRelationship(ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 10
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSession;
    move v1, p1

    .local v1, "relation":I
    move-object v2, p2

    .local v2, "origin":Landroid/net/Uri;
    move-object v3, p3

    .local v3, "extras":Landroid/os/Bundle;
    move v5, v1

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    move v5, v1

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 230
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 235
    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :goto_0
    return v0

    .line 233
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsSession;
    :cond_1
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/support/customtabs/ICustomTabsService;->validateRelationship(Landroid/support/customtabs/ICustomTabsCallback;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    goto :goto_0

    .line 234
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 235
    .local v4, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method
