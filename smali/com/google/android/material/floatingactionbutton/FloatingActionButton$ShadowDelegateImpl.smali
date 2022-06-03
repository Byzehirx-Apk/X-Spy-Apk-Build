.class Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Lcom/google/android/material/shadow/ShadowViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShadowDelegateImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 4

    .prologue
    .line 1263
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRadius()F
    .locals 3

    .prologue
    .line 1267
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;
    return v0
.end method

.method public isCompatPaddingEnabled()Z
    .locals 2

    .prologue
    .line 1284
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;
    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 1279
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->access$101(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    .line 1280
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 11

    .prologue
    .line 1272
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1273
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1274
    invoke-static {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->access$000(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I

    move-result v7

    add-int/2addr v6, v7

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->access$000(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I

    move-result v8

    add-int/2addr v7, v8

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v9}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->access$000(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I

    move-result v9

    add-int/2addr v8, v9

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->access$000(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I

    move-result v10

    add-int/2addr v9, v10

    .line 1273
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setPadding(IIII)V

    .line 1275
    return-void
.end method
