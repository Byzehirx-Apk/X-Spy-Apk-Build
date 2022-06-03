.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetElevationAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V
    .locals 5

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;)V

    return-void
.end method


# virtual methods
.method protected getTargetShadowSize()F
    .locals 2

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;
    return v0
.end method
