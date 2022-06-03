.class public final Lcom/google/appinventor/components/runtime/LinearLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 13

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v5, v3

    if-nez v5, :cond_0

    move-object v5, v4

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v4

    if-nez v5, :cond_2

    .line 51
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string/jumbo v7, "LinearLayout - preferredEmptyWidth and preferredEmptyHeight must be either both null or both not null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 57
    :cond_2
    move-object v5, v0

    new-instance v6, Lcom/google/appinventor/components/runtime/LinearLayout$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/LinearLayout$1;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    .line 98
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    move v6, v2

    if-nez v6, :cond_3

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    return-void

    .line 98
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 10

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "LinearLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "I am adding: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 111
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method public final getLayoutManager()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    move-object v0, v1

    return-object v0
.end method

.method public final setBaselineAligned(Z)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    return-void
.end method

.method public final setHorizontalGravity(I)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 119
    return-void
.end method

.method public final setVerticalGravity(I)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 123
    return-void
.end method
