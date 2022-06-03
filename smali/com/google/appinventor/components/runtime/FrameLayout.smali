.class public Lcom/google/appinventor/components/runtime/FrameLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout;


# virtual methods
.method public add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 9

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "FrameLayout"

    const-string/jumbo v3, "adding component.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 44
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 53
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    move v2, v5

    .line 54
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 55
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 56
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_0
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    const-string/jumbo v1, "FrameLayout"

    const-string/jumbo v2, "some one just get my framelayout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 37
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout;

    move-object v0, v1

    return-object v0
.end method
