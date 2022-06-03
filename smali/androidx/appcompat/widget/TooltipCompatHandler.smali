.class Landroidx/appcompat/widget/TooltipCompatHandler;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final HOVER_HIDE_TIMEOUT_MS:J = 0x3a98L

.field private static final HOVER_HIDE_TIMEOUT_SHORT_MS:J = 0xbb8L

.field private static final LONG_CLICK_HIDE_TIMEOUT_MS:J = 0x9c4L

.field private static final TAG:Ljava/lang/String; = "TooltipCompatHandler"

.field private static sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

.field private static sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private mAnchorX:I

.field private mAnchorY:I

.field private mFromTouch:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mHoverSlop:I

.field private mPopup:Landroidx/appcompat/widget/TooltipPopup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    move-object v1, p1

    .local v1, "anchor":Landroid/view/View;
    move-object v2, p2

    .local v2, "tooltipText":Ljava/lang/CharSequence;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/TooltipCompatHandler$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/TooltipCompatHandler$1;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    iput-object v4, v3, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    .line 60
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/TooltipCompatHandler$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/TooltipCompatHandler$2;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    iput-object v4, v3, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    .line 109
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 110
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    .line 111
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 112
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 111
    invoke-static {v4}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHoverSlop(Landroid/view/ViewConfiguration;)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    .line 113
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/TooltipCompatHandler;->clearAnchorPos()V

    .line 115
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 116
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 117
    return-void
.end method

.method private cancelPendingShow()V
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 225
    return-void
.end method

.method private clearAnchorPos()V
    .locals 3

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    move-object v1, v0

    const v2, 0x7fffffff

    iput v2, v1, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    .line 251
    move-object v1, v0

    const v2, 0x7fffffff

    iput v2, v1, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    .line 252
    return-void
.end method

.method private scheduleShow()V
    .locals 6

    .prologue
    .line 220
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    move-object v2, v1

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    move-object v3, v1

    iget-object v3, v3, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 221
    return-void
.end method

.method private static setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "handler":Landroidx/appcompat/widget/TooltipCompatHandler;
    sget-object v1, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-eqz v1, :cond_0

    .line 211
    sget-object v1, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-direct {v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->cancelPendingShow()V

    .line 213
    :cond_0
    move-object v1, v0

    sput-object v1, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 214
    sget-object v1, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-eqz v1, :cond_1

    .line 215
    sget-object v1, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-direct {v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->scheduleShow()V

    .line 217
    :cond_1
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "tooltipText":Ljava/lang/CharSequence;
    sget-object v2, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    move-object v3, v0

    if-ne v2, v3, :cond_0

    .line 94
    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 96
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    sget-object v2, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    move-object v3, v0

    if-ne v2, v3, :cond_1

    .line 98
    sget-object v2, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-virtual {v2}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    .line 100
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 101
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 102
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_2
    new-instance v2, Landroidx/appcompat/widget/TooltipCompatHandler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/TooltipCompatHandler;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateAnchorPos(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    move v2, v4

    .line 236
    .local v2, "newAnchorX":I
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    move v3, v4

    .line 237
    .local v3, "newAnchorY":I
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    if-gt v4, v5, :cond_0

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    sub-int/2addr v4, v5

    .line 238
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    if-gt v4, v5, :cond_0

    .line 239
    const/4 v4, 0x0

    move v0, v4

    .line 243
    .end local v0    # "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    :goto_0
    return v0

    .line 241
    .restart local v0    # "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    :cond_0
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    .line 242
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    .line 243
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method hide()V
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    sget-object v1, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    move-object v2, v0

    if-ne v1, v2, :cond_0

    .line 193
    const/4 v1, 0x0

    sput-object v1, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 194
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    if-eqz v1, :cond_2

    .line 195
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/TooltipPopup;->hide()V

    .line 196
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    .line 197
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->clearAnchorPos()V

    .line 198
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 203
    :cond_0
    :goto_0
    sget-object v1, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    move-object v2, v0

    if-ne v1, v2, :cond_1

    .line 204
    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 206
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 207
    return-void

    .line 200
    :cond_2
    const-string/jumbo v1, "TooltipCompatHandler"

    const-string/jumbo v2, "sActiveHandler.mPopup == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/MotionEvent;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    if-eqz v4, :cond_0

    .line 130
    const/4 v4, 0x0

    move v0, v4

    .line 149
    .end local v0    # "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    :goto_0
    return v0

    .line 132
    .restart local v0    # "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 133
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    move-object v3, v4

    .line 134
    .local v3, "manager":Landroid/view/accessibility/AccessibilityManager;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 137
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 149
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 139
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    if-nez v4, :cond_2

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/TooltipCompatHandler;->updateAnchorPos(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    move-object v4, v0

    invoke-static {v4}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    goto :goto_1

    .line 144
    :pswitch_2
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/TooltipCompatHandler;->clearAnchorPos()V

    .line 145
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    .line 122
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    .line 123
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TooltipCompatHandler;->show(Z)V

    .line 124
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    .line 160
    return-void
.end method

.method show(Z)V
    .locals 11

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipCompatHandler;
    move v1, p1

    .local v1, "fromTouch":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 164
    .line 189
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    .line 167
    sget-object v4, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-eqz v4, :cond_1

    .line 168
    sget-object v4, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-virtual {v4}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    .line 170
    :cond_1
    move-object v4, v0

    sput-object v4, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    .line 172
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    .line 173
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/TooltipPopup;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/TooltipPopup;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    .line 174
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/widget/TooltipPopup;->show(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    .line 176
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 179
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    if-eqz v4, :cond_2

    .line 180
    const-wide/16 v4, 0x9c4

    move-wide v2, v4

    .line 187
    .local v2, "timeout":J
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    .line 188
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 189
    goto :goto_0

    .line 181
    .end local v2    # "timeout":J
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 183
    const-wide/16 v4, 0xbb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    move-wide v2, v4

    .restart local v2    # "timeout":J
    goto :goto_1

    .line 185
    .end local v2    # "timeout":J
    :cond_3
    const-wide/16 v4, 0x3a98

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    move-wide v2, v4

    .restart local v2    # "timeout":J
    goto :goto_1
.end method
