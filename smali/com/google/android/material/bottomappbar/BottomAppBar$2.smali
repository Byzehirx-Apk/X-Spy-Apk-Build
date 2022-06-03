.class Lcom/google/android/material/bottomappbar/BottomAppBar$2;
.super Ljava/lang/Object;
.source "BottomAppBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;->createCradleTranslationAnimation(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 4

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$2;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/ValueAnimator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    .line 329
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$200(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 330
    return-void
.end method
