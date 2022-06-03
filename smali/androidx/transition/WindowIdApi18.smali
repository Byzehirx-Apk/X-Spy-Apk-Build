.class Landroidx/transition/WindowIdApi18;
.super Ljava/lang/Object;
.source "WindowIdApi18.java"

# interfaces
.implements Landroidx/transition/WindowIdImpl;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation


# instance fields
.field private final mWindowId:Landroid/view/WindowId;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/transition/WindowIdApi18;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v3

    iput-object v3, v2, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Landroidx/transition/WindowIdApi18;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Landroidx/transition/WindowIdApi18;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/transition/WindowIdApi18;

    iget-object v2, v2, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-virtual {v2, v3}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/transition/WindowIdApi18;
    return v0

    .restart local v0    # "this":Landroidx/transition/WindowIdApi18;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/transition/WindowIdApi18;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-virtual {v1}, Landroid/view/WindowId;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/transition/WindowIdApi18;
    return v0
.end method
