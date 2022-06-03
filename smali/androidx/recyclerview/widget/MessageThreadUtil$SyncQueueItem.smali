.class Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncQueueItem"
.end annotation


# static fields
.field private static sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

.field private static final sPoolLock:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field public arg3:I

.field public arg4:I

.field public arg5:I

.field public data:Ljava/lang/Object;

.field next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

.field public what:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtainMessage(III)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .locals 10

    .prologue
    .line 223
    move v0, p0

    .local v0, "what":I
    move v1, p1

    .local v1, "arg1":I
    move v2, p2

    .local v2, "arg2":I
    move v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "what":I
    return-object v0
.end method

.method static obtainMessage(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .locals 13

    .prologue
    .line 202
    move v0, p0

    .local v0, "what":I
    move v1, p1

    .local v1, "arg1":I
    move v2, p2

    .local v2, "arg2":I
    move/from16 v3, p3

    .local v3, "arg3":I
    move/from16 v4, p4

    .local v4, "arg4":I
    move/from16 v5, p5

    .local v5, "arg5":I
    move-object/from16 v6, p6

    .local v6, "data":Ljava/lang/Object;
    sget-object v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    move-object v7, v11

    monitor-enter v10

    .line 204
    :try_start_0
    sget-object v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-nez v10, :cond_0

    .line 205
    new-instance v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;-><init>()V

    move-object v8, v10

    .line 211
    .local v8, "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_0
    move-object v10, v8

    move v11, v0

    iput v11, v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    .line 212
    move-object v10, v8

    move v11, v1

    iput v11, v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    .line 213
    move-object v10, v8

    move v11, v2

    iput v11, v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    .line 214
    move-object v10, v8

    move v11, v3

    iput v11, v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg3:I

    .line 215
    move-object v10, v8

    move v11, v4

    iput v11, v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg4:I

    .line 216
    move-object v10, v8

    move v11, v5

    iput v11, v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg5:I

    .line 217
    move-object v10, v8

    move-object v11, v6

    iput-object v11, v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    .line 218
    move-object v10, v8

    move-object v11, v7

    monitor-exit v11

    move-object v0, v10

    .end local v0    # "what":I
    return-object v0

    .line 207
    .end local v8    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .restart local v0    # "what":I
    :cond_0
    sget-object v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-object v8, v10

    .line 208
    .restart local v8    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    sget-object v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iget-object v10, v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    sput-object v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 209
    move-object v10, v8

    const/4 v11, 0x0

    iput-object v11, v10, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    goto :goto_0

    .line 219
    .end local v8    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v7

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v9

    throw v10
.end method

.method static obtainMessage(IILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .locals 10

    .prologue
    .line 227
    move v0, p0

    .local v0, "what":I
    move v1, p1

    .local v1, "arg1":I
    move-object v2, p2

    .local v2, "data":Ljava/lang/Object;
    move v3, v0

    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v2

    invoke-static/range {v3 .. v9}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "what":I
    return-object v0
.end method


# virtual methods
.method recycle()V
    .locals 13

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 190
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    move-object v11, v8

    move v12, v9

    move v8, v12

    move-object v9, v11

    move v10, v12

    iput v10, v9, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg5:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    iput v9, v8, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg4:I

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput v8, v7, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg3:I

    move-object v11, v5

    move v12, v6

    move v5, v12

    move-object v6, v11

    move v7, v12

    iput v7, v6, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    move-object v11, v4

    move v12, v5

    move v4, v12

    move-object v5, v11

    move v6, v12

    iput v6, v5, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iput v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    .line 191
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    .line 192
    sget-object v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v1, v4

    monitor-enter v3

    .line 193
    :try_start_0
    sget-object v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v3, :cond_0

    .line 194
    move-object v3, v0

    sget-object v4, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v4, v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 196
    :cond_0
    move-object v3, v0

    sput-object v3, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 197
    move-object v3, v1

    monitor-exit v3

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method
