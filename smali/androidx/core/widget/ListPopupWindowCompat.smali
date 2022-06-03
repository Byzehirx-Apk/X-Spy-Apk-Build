.class public final Landroidx/core/widget/ListPopupWindowCompat;
.super Ljava/lang/Object;
.source "ListPopupWindowCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ListPopupWindowCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static createDragToOpenListener(Landroid/widget/ListPopupWindow;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 4
    .param p0    # Landroid/widget/ListPopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "listPopupWindow":Landroid/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "src":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 98
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    move-object v0, v2

    .line 100
    .end local v0    # "listPopupWindow":Landroid/widget/ListPopupWindow;
    :goto_0
    return-object v0

    .restart local v0    # "listPopupWindow":Landroid/widget/ListPopupWindow;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "listPopupWindow":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "src":Landroid/view/View;
    move-object v2, v0

    check-cast v2, Landroid/widget/ListPopupWindow;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/widget/ListPopupWindowCompat;->createDragToOpenListener(Landroid/widget/ListPopupWindow;Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "listPopupWindow":Ljava/lang/Object;
    return-object v0
.end method
