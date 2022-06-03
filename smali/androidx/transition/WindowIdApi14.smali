.class Landroidx/transition/WindowIdApi14;
.super Ljava/lang/Object;
.source "WindowIdApi14.java"

# interfaces
.implements Landroidx/transition/WindowIdImpl;


# instance fields
.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Landroidx/transition/WindowIdApi14;
    move-object v1, p1

    .local v1, "token":Landroid/os/IBinder;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Landroidx/transition/WindowIdApi14;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Landroidx/transition/WindowIdApi14;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/transition/WindowIdApi14;

    iget-object v2, v2, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/transition/WindowIdApi14;
    return v0

    .restart local v0    # "this":Landroidx/transition/WindowIdApi14;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Landroidx/transition/WindowIdApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/transition/WindowIdApi14;
    return v0
.end method
