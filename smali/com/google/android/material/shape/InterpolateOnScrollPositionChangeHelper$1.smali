.class Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;
.super Ljava/lang/Object;
.source "InterpolateOnScrollPositionChangeHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;->this$0:Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;->this$0:Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;

    invoke-virtual {v1}, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->updateInterpolationForScreenPosition()V

    .line 39
    return-void
.end method
