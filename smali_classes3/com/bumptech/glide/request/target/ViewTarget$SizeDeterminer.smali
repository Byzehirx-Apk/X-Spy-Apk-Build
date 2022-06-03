.class Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
.super Ljava/lang/Object;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/target/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeDeterminer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
    }
.end annotation


# static fields
.field private static final PENDING_SIZE:I


# instance fields
.field private final cbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private displayDimens:Landroid/graphics/Point;

.field private layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 166
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    .line 172
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->checkCurrentDimens()V

    return-void
.end method

.method private checkCurrentDimens()V
    .locals 7

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    .line 205
    :goto_0
    return-void

    .line 187
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewWidthOrParam()I

    move-result v4

    move v1, v4

    .line 188
    .local v1, "currentWidth":I
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewHeightOrParam()I

    move-result v4

    move v2, v4

    .line 189
    .local v2, "currentHeight":I
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 190
    :cond_1
    goto :goto_0

    .line 193
    :cond_2
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->notifyCbs(II)V

    .line 200
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move-object v3, v4

    .line 201
    .local v3, "observer":Landroid/view/ViewTreeObserver;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 202
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 204
    :cond_3
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    .line 205
    goto :goto_0
.end method

.method private getDisplayDimens()Landroid/graphics/Point;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    if-eqz v3, :cond_0

    .line 261
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    move-object v0, v3

    .line 271
    .end local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    .local v1, "windowManager":Landroid/view/WindowManager;
    .local v2, "display":Landroid/view/Display;
    :goto_0
    return-object v0

    .line 263
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    .end local v2    # "display":Landroid/view/Display;
    .restart local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    move-object v1, v3

    .line 264
    .restart local v1    # "windowManager":Landroid/view/WindowManager;
    move-object v3, v1

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object v2, v3

    .line 265
    .restart local v2    # "display":Landroid/view/Display;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_1

    .line 266
    move-object v3, v0

    new-instance v4, Landroid/graphics/Point;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iput-object v4, v3, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    .line 267
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 271
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    move-object v0, v3

    goto :goto_0

    .line 269
    :cond_1
    move-object v3, v0

    new-instance v4, Landroid/graphics/Point;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, v3, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    goto :goto_1
.end method

.method private getSizeForParam(IZ)I
    .locals 6

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    move v1, p1

    .local v1, "param":I
    move v2, p2

    .local v2, "isHeight":Z
    move v4, v1

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    .line 250
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getDisplayDimens()Landroid/graphics/Point;

    move-result-object v4

    move-object v3, v4

    .line 251
    .local v3, "displayDimens":Landroid/graphics/Point;
    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_0
    move v0, v4

    .line 253
    .end local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    .end local v3    # "displayDimens":Landroid/graphics/Point;
    :goto_1
    return v0

    .line 251
    .restart local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    .restart local v3    # "displayDimens":Landroid/graphics/Point;
    :cond_0
    move-object v4, v3

    iget v4, v4, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 253
    .end local v3    # "displayDimens":Landroid/graphics/Point;
    :cond_1
    move v4, v1

    move v0, v4

    goto :goto_1
.end method

.method private getViewHeightOrParam()I
    .locals 5

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 228
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move v0, v2

    .line 233
    .end local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    :goto_0
    return v0

    .line 230
    .restart local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 231
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getSizeForParam(IZ)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 233
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private getViewWidthOrParam()I
    .locals 5

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 239
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move v0, v2

    .line 244
    .end local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    :goto_0
    return v0

    .line 241
    .restart local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 242
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getSizeForParam(IZ)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 244
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private isSizeValid(I)Z
    .locals 4

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    move v1, p1

    .local v1, "size":I
    move v2, v1

    if-gtz v2, :cond_0

    move v2, v1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyCbs(II)V
    .locals 8

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/request/target/SizeReadyCallback;

    move-object v4, v5

    .line 177
    .local v4, "cb":Lcom/bumptech/glide/request/target/SizeReadyCallback;
    move-object v5, v4

    move v6, v1

    move v7, v2

    invoke-interface {v5, v6, v7}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 178
    goto :goto_0

    .line 179
    .end local v4    # "cb":Lcom/bumptech/glide/request/target/SizeReadyCallback;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 180
    return-void
.end method


# virtual methods
.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 10

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    move-object v1, p1

    .local v1, "cb":Lcom/bumptech/glide/request/target/SizeReadyCallback;
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewWidthOrParam()I

    move-result v5

    move v2, v5

    .line 209
    .local v2, "currentWidth":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewHeightOrParam()I

    move-result v5

    move v3, v5

    .line 210
    .local v3, "currentHeight":I
    move-object v5, v0

    move v6, v2

    invoke-direct {v5, v6}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    move v6, v3

    invoke-direct {v5, v6}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v5, v6, v7}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 216
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 218
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    if-nez v5, :cond_0

    .line 219
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    move-object v4, v5

    .line 220
    .local v4, "observer":Landroid/view/ViewTreeObserver;
    move-object v5, v0

    new-instance v6, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;-><init>(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V

    iput-object v6, v5, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    .line 221
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
