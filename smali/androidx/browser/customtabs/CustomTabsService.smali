.class public abstract Landroidx/browser/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomTabsService$Relation;,
        Landroidx/browser/customtabs/CustomTabsService$Result;
    }
.end annotation


# static fields
.field public static final ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"

.field public static final KEY_URL:Ljava/lang/String; = "android.support.customtabs.otherurls.URL"

.field public static final RELATION_HANDLE_ALL_URLS:I = 0x2

.field public static final RELATION_USE_AS_ORIGIN:I = 0x1

.field public static final RESULT_FAILURE_DISALLOWED:I = -0x1

.field public static final RESULT_FAILURE_MESSAGING_ERROR:I = -0x3

.field public static final RESULT_FAILURE_REMOTE_ERROR:I = -0x2

.field public static final RESULT_SUCCESS:I


# instance fields
.field private mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

.field final mDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Service;-><init>()V

    .line 101
    move-object v1, v0

    new-instance v2, Landroidx/collection/ArrayMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, v1, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    .line 104
    move-object v1, v0

    new-instance v2, Landroidx/browser/customtabs/CustomTabsService$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/browser/customtabs/CustomTabsService$1;-><init>(Landroidx/browser/customtabs/CustomTabsService;)V

    iput-object v2, v1, Landroidx/browser/customtabs/CustomTabsService;->mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

    return-void
.end method


# virtual methods
.method protected cleanUpSession(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z
    .locals 10

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService;
    move-object v1, p1

    .local v1, "sessionToken":Landroidx/browser/customtabs/CustomTabsSessionToken;
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v2, v7

    monitor-enter v6
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    move-object v6, v1

    :try_start_1
    invoke-virtual {v6}, Landroidx/browser/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v3, v6

    .line 188
    .local v3, "binder":Landroid/os/IBinder;
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    move-object v7, v3

    .line 189
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder$DeathRecipient;

    move-object v4, v6

    .line 190
    .local v4, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    move-object v6, v3

    move-object v7, v4

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v6

    .line 191
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    move-object v7, v3

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 192
    move-object v6, v2

    monitor-exit v6

    .line 195
    .line 196
    const/4 v6, 0x1

    move v0, v6

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsService;
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :goto_0
    return v0

    .line 192
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsService;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 194
    .local v2, "e":Ljava/util/NoSuchElementException;
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method protected abstract extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method protected abstract mayLaunchUrl(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/browser/customtabs/CustomTabsSessionToken;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract newSession(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsService;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsService;->mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

    move-object v0, v2

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsService;
    return-object v0
.end method

.method protected abstract postMessage(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method protected abstract requestPostMessageChannel(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z
.end method

.method protected abstract updateVisuals(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z
.end method

.method protected abstract validateRelationship(Landroidx/browser/customtabs/CustomTabsSessionToken;ILandroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method protected abstract warmup(J)Z
.end method
