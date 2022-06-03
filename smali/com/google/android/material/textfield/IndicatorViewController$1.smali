.class Lcom/google/android/material/textfield/IndicatorViewController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IndicatorViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/IndicatorViewController;

.field final synthetic val$captionToHide:I

.field final synthetic val$captionToShow:I

.field final synthetic val$captionViewToHide:Landroid/widget/TextView;

.field final synthetic val$captionViewToShow:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/IndicatorViewController;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 8

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/textfield/IndicatorViewController;
    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToShow:I

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToHide:Landroid/widget/TextView;

    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToHide:I

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    move-object v6, v0

    invoke-direct {v6}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController$1;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToShow:I

    invoke-static {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->access$002(Lcom/google/android/material/textfield/IndicatorViewController;I)I

    move-result v2

    .line 231
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->access$102(Lcom/google/android/material/textfield/IndicatorViewController;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    .line 232
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToHide:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 233
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToHide:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToHide:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-static {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->access$200(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 235
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-static {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->access$200(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController$1;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 243
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :cond_0
    return-void
.end method
