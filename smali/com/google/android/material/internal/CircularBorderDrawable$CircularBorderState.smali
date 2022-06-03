.class Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "CircularBorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/CircularBorderDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircularBorderState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/CircularBorderDrawable;


# direct methods
.method private constructor <init>(Lcom/google/android/material/internal/CircularBorderDrawable;)V
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;->this$0:Lcom/google/android/material/internal/CircularBorderDrawable;

    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/internal/CircularBorderDrawable;Lcom/google/android/material/internal/CircularBorderDrawable$1;)V
    .locals 5

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;
    move-object v1, p1

    .local v1, "x0":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v2, p2

    .local v2, "x1":Lcom/google/android/material/internal/CircularBorderDrawable$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;-><init>(Lcom/google/android/material/internal/CircularBorderDrawable;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;->this$0:Lcom/google/android/material/internal/CircularBorderDrawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;
    return-object v0
.end method
