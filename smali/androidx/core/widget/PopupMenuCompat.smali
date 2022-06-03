.class public final Landroidx/core/widget/PopupMenuCompat;
.super Ljava/lang/Object;
.source "PopupMenuCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/PopupMenuCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "popupMenu":Ljava/lang/Object;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    move-object v0, v1

    .line 58
    .end local v0    # "popupMenu":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "popupMenu":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method
