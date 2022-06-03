.class public Landroidx/browser/customtabs/CustomTabsSessionToken;
.super Ljava/lang/Object;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSessionToken"


# instance fields
.field private final mCallback:Landroidx/browser/customtabs/CustomTabsCallback;

.field final mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsCallback;)V
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken;
    move-object v1, p1

    .local v1, "callbackBinder":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 90
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    .line 91
    move-object v2, v0

    new-instance v3, Landroidx/browser/customtabs/CustomTabsSessionToken$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/browser/customtabs/CustomTabsSessionToken$1;-><init>(Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    iput-object v3, v2, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallback:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 141
    return-void
.end method

.method public static createMockSessionTokenForTesting()Landroidx/browser/customtabs/CustomTabsSessionToken;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 86
    new-instance v0, Landroidx/browser/customtabs/CustomTabsSessionToken;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    new-instance v2, Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;-><init>()V

    invoke-direct {v1, v2}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    return-object v0
.end method

.method public static getSessionTokenFromIntent(Landroid/content/Intent;)Landroidx/browser/customtabs/CustomTabsSessionToken;
    .locals 7

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "intent":Landroid/content/Intent;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object v1, v3

    .line 73
    .local v1, "b":Landroid/os/Bundle;
    move-object v3, v1

    const-string/jumbo v4, "android.support.customtabs.extra.SESSION"

    invoke-static {v3, v4}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    move-object v2, v3

    .line 74
    .local v2, "binder":Landroid/os/IBinder;
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 75
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v3, Landroidx/browser/customtabs/CustomTabsSessionToken;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-static {v5}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Landroidx/browser/customtabs/CustomTabsSessionToken;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 156
    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSessionToken;
    :goto_0
    return v0

    .line 155
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsSessionToken;
    :cond_0
    move-object v3, v1

    check-cast v3, Landroidx/browser/customtabs/CustomTabsSessionToken;

    move-object v2, v3

    .line 156
    .local v2, "token":Landroidx/browser/customtabs/CustomTabsSessionToken;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/browser/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v4}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getCallback()Landroidx/browser/customtabs/CustomTabsCallback;
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallback:Landroidx/browser/customtabs/CustomTabsCallback;

    move-object v0, v1

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSessionToken;
    return-object v0
.end method

.method getCallbackBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSessionToken;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSessionToken;
    return v0
.end method

.method public isAssociatedWith(Landroidx/browser/customtabs/CustomTabsSession;)Z
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsSessionToken;
    move-object v1, p1

    .local v1, "session":Landroidx/browser/customtabs/CustomTabsSession;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/browser/customtabs/CustomTabsSession;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsSessionToken;
    return v0
.end method
