.class Lcom/bumptech/glide/request/target/SquaringDrawable$State;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SquaringDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/target/SquaringDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field private final side:I

.field private final wrapped:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    move-object v1, p1

    .local v1, "wrapped":Landroid/graphics/drawable/Drawable$ConstantState;
    move v2, p2

    .local v2, "side":I
    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 218
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->wrapped:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 219
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->side:I

    .line 220
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)V
    .locals 5

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    move-object v1, p1

    .local v1, "other":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->wrapped:Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v4, v1

    iget v4, v4, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->side:I

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->wrapped:Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    return-object v0
.end method

.method static synthetic access$100(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)I
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->side:I

    move v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    return v0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/bumptech/glide/request/target/SquaringDrawable;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/bumptech/glide/request/target/SquaringDrawable;-><init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/content/res/Resources;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    return-object v0
.end method
