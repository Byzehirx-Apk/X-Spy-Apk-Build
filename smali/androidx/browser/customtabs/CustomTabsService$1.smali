.class Landroidx/browser/customtabs/CustomTabsService$1;
.super Landroid/support/customtabs/ICustomTabsService$Stub;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsService;)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/browser/customtabs/CustomTabsService;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/customtabs/ICustomTabsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService$1;
    move-object v1, p1

    .local v1, "commandName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":Landroid/os/Bundle;
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/browser/customtabs/CustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsService$1;
    return-object v0
.end method

.method public mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/ICustomTabsCallback;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService$1;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v2, p2

    .local v2, "url":Landroid/net/Uri;
    move-object v3, p3

    .local v3, "extras":Landroid/os/Bundle;
    move-object v4, p4

    .local v4, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v6, Landroidx/browser/customtabs/CustomTabsSessionToken;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/browser/customtabs/CustomTabsService;->mayLaunchUrl(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsService$1;
    return v0
.end method

.method public newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
    .locals 11

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService$1;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    new-instance v6, Landroidx/browser/customtabs/CustomTabsSessionToken;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    move-object v2, v6

    .line 115
    .local v2, "sessionToken":Landroidx/browser/customtabs/CustomTabsSessionToken;
    :try_start_0
    new-instance v6, Landroidx/browser/customtabs/CustomTabsService$1$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/browser/customtabs/CustomTabsService$1$1;-><init>(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    move-object v3, v6

    .line 121
    .local v3, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v4, v7

    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    move-object v6, v1

    :try_start_1
    invoke-interface {v6}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v7, v3

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 123
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v7}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 124
    move-object v6, v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    move-object v6, v0

    :try_start_2
    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroidx/browser/customtabs/CustomTabsService;->newSession(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    move v0, v6

    .line 127
    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsService$1;
    .end local v3    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :goto_0
    return v0

    .line 124
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsService$1;
    .restart local v3    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v5

    :try_start_4
    throw v6
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 126
    .end local v3    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 127
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public postMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 9

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService$1;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, p3

    .local v3, "extras":Landroid/os/Bundle;
    move-object v4, v0

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v5, Landroidx/browser/customtabs/CustomTabsSessionToken;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/browser/customtabs/CustomTabsService;->postMessage(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsService$1;
    return v0
.end method

.method public requestPostMessageChannel(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z
    .locals 8

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService$1;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v2, p2

    .local v2, "postMessageOrigin":Landroid/net/Uri;
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v4, Landroidx/browser/customtabs/CustomTabsSessionToken;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/browser/customtabs/CustomTabsService;->requestPostMessageChannel(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsService$1;
    return v0
.end method

.method public updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService$1;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v2, p2

    .local v2, "bundle":Landroid/os/Bundle;
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v4, Landroidx/browser/customtabs/CustomTabsSessionToken;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/browser/customtabs/CustomTabsService;->updateVisuals(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsService$1;
    return v0
.end method

.method public validateRelationship(Landroid/support/customtabs/ICustomTabsCallback;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 11

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService$1;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move v2, p2

    .local v2, "relation":I
    move-object v3, p3

    .local v3, "origin":Landroid/net/Uri;
    move-object v4, p4

    .local v4, "extras":Landroid/os/Bundle;
    move-object v5, v0

    iget-object v5, v5, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v6, Landroidx/browser/customtabs/CustomTabsSessionToken;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/browser/customtabs/CustomTabsService;->validateRelationship(Landroidx/browser/customtabs/CustomTabsSessionToken;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsService$1;
    return v0
.end method

.method public warmup(J)Z
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService$1;
    move-wide v1, p1

    .local v1, "flags":J
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroidx/browser/customtabs/CustomTabsService;->warmup(J)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsService$1;
    return v0
.end method
