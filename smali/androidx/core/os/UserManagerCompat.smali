.class public Landroidx/core/os/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/UserManagerCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 40
    move-object v1, v0

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    move v0, v1

    .line 42
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method
