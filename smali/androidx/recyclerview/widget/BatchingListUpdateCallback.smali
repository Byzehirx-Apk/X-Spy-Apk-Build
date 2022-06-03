.class public Landroidx/recyclerview/widget/BatchingListUpdateCallback;
.super Ljava/lang/Object;
.source "BatchingListUpdateCallback.java"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# static fields
.field private static final TYPE_ADD:I = 0x1

.field private static final TYPE_CHANGE:I = 0x3

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_REMOVE:I = 0x2


# instance fields
.field mLastEventCount:I

.field mLastEventPayload:Ljava/lang/Object;

.field mLastEventPosition:I

.field mLastEventType:I

.field final mWrapped:Landroidx/recyclerview/widget/ListUpdateCallback;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    move-object v1, p1

    .local v1, "callback":Landroidx/recyclerview/widget/ListUpdateCallback;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 42
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 43
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 44
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 47
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 48
    return-void
.end method


# virtual methods
.method public dispatchLastEvent()V
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    if-nez v1, :cond_0

    .line 57
    .line 72
    :goto_0
    return-void

    .line 59
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    packed-switch v1, :pswitch_data_0

    .line 70
    :goto_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 71
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 72
    goto :goto_0

    .line 61
    :pswitch_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Landroidx/recyclerview/widget/ListUpdateCallback;

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v1, v2, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 62
    goto :goto_1

    .line 64
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Landroidx/recyclerview/widget/ListUpdateCallback;

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v1, v2, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 65
    goto :goto_1

    .line 67
    :pswitch_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Landroidx/recyclerview/widget/ListUpdateCallback;

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_1

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "payload":Ljava/lang/Object;
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v6, v7

    if-gt v5, v6, :cond_0

    move v5, v1

    move v6, v2

    add-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    move-object v6, v3

    if-ne v5, v6, :cond_0

    .line 114
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v5, v6

    move v4, v5

    .line 115
    .local v4, "previousEnd":I
    move-object v5, v0

    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 116
    move-object v5, v0

    move v6, v4

    move v7, v1

    move v8, v2

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 117
    .line 124
    .end local v4    # "previousEnd":I
    :goto_0
    return-void

    .line 119
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 120
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 121
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 122
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 123
    move-object v5, v0

    const/4 v6, 0x3

    iput v6, v5, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 124
    goto :goto_0
.end method

.method public onInserted(II)V
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt v3, v4, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    .line 78
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 79
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 80
    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 83
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 84
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 85
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 86
    goto :goto_0
.end method

.method public onMoved(II)V
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    move v1, p1

    .local v1, "fromPosition":I
    move v2, p2

    .local v2, "toPosition":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 105
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Landroidx/recyclerview/widget/ListUpdateCallback;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    .line 106
    return-void
.end method

.method public onRemoved(II)V
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    move v4, v1

    if-lt v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    .line 92
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 93
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 94
    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 97
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 98
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 99
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 100
    goto :goto_0
.end method
