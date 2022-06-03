.class Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableDelegateState"
.end annotation


# instance fields
.field private final mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 4

    .prologue
    .line 966
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    move-object v1, p1

    .local v1, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 967
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 968
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 2

    .prologue
    .line 994
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 999
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 972
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    new-instance v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    move-object v1, v2

    .line 973
    .local v1, "drawableCompat":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/VectorDrawable;

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 974
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 979
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    new-instance v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    move-object v2, v3

    .line 980
    .local v2, "drawableCompat":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable;

    iput-object v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 981
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    .line 986
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    new-instance v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    move-object v3, v4

    .line 987
    .local v3, "drawableCompat":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v6, v1

    move-object v7, v2

    .line 988
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/VectorDrawable;

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 989
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    return-object v0
.end method
