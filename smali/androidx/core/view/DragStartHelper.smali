.class public Landroidx/core/view/DragStartHelper;
.super Ljava/lang/Object;
.source "DragStartHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DragStartHelper$OnDragStartListener;
    }
.end annotation


# instance fields
.field private mDragging:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/DragStartHelper$OnDragStartListener;)V
    .locals 8

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DragStartHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "listener":Landroidx/core/view/DragStartHelper$OnDragStartListener;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 181
    move-object v3, v0

    new-instance v4, Landroidx/core/view/DragStartHelper$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/core/view/DragStartHelper$1;-><init>(Landroidx/core/view/DragStartHelper;)V

    iput-object v4, v3, Landroidx/core/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 188
    move-object v3, v0

    new-instance v4, Landroidx/core/view/DragStartHelper$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/core/view/DragStartHelper$2;-><init>(Landroidx/core/view/DragStartHelper;)V

    iput-object v4, v3, Landroidx/core/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 97
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    .line 98
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    .line 99
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DragStartHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    return-void
.end method

.method public detach()V
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DragStartHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 118
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    return-void
.end method

.method public getTouchPosition(Landroid/graphics/Point;)V
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DragStartHelper;
    move-object v1, p1

    .local v1, "point":Landroid/graphics/Point;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    move-object v4, v0

    iget v4, v4, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 179
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DragStartHelper;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    move-object v3, v1

    move-object v4, v0

    invoke-interface {v2, v3, v4}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/view/DragStartHelper;
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/DragStartHelper;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/MotionEvent;
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    move v3, v5

    .line 130
    .local v3, "x":I
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    move v4, v5

    .line 131
    .local v4, "y":I
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    const/4 v5, 0x0

    move v0, v5

    .end local v0    # "this":Landroidx/core/view/DragStartHelper;
    :goto_1
    return v0

    .line 133
    .restart local v0    # "this":Landroidx/core/view/DragStartHelper;
    :pswitch_0
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    .line 134
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    .line 135
    goto :goto_0

    .line 138
    :pswitch_1
    move-object v5, v2

    const/16 v6, 0x2002

    invoke-static {v5, v6}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 139
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 141
    goto :goto_0

    .line 143
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/core/view/DragStartHelper;->mDragging:Z

    if-eqz v5, :cond_2

    .line 145
    goto :goto_0

    .line 147
    :cond_2
    move-object v5, v0

    iget v5, v5, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    move v6, v3

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    move v6, v4

    if-ne v5, v6, :cond_3

    .line 149
    goto :goto_0

    .line 151
    :cond_3
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    .line 152
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    .line 153
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    move-object v7, v1

    move-object v8, v0

    invoke-interface {v6, v7, v8}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result v6

    iput-boolean v6, v5, Landroidx/core/view/DragStartHelper;->mDragging:Z

    .line 154
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/core/view/DragStartHelper;->mDragging:Z

    move v0, v5

    goto :goto_1

    .line 158
    :pswitch_2
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/core/view/DragStartHelper;->mDragging:Z

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
