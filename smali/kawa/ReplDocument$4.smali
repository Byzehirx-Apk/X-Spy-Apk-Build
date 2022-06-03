.class Lkawa/ReplDocument$4;
.super Ljava/lang/Object;
.source "ReplDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplDocument;->checkingPendingInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkawa/ReplDocument;


# direct methods
.method constructor <init>(Lkawa/ReplDocument;)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument$4;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument$4;
    move-object v6, v0

    iget-object v6, v6, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget v6, v6, Lkawa/ReplDocument;->outputMark:I

    move v1, v6

    .line 172
    .local v1, "inputStart":I
    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget v7, v7, Lkawa/ReplDocument;->endMark:I

    if-gt v6, v7, :cond_2

    .line 174
    move-object v6, v0

    iget-object v6, v6, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v6, v6, Lkawa/ReplDocument;->content:Lgnu/kawa/swingviews/SwingContent;

    iget-object v6, v6, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    move-object v2, v6

    .line 175
    .local v2, "b":Lgnu/lists/CharBuffer;
    move-object v6, v2

    const/16 v7, 0xa

    move v8, v1

    invoke-virtual {v6, v7, v8}, Lgnu/lists/CharBuffer;->indexOf(II)I

    move-result v6

    move v3, v6

    .line 176
    .local v3, "lineAfter":I
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget v7, v7, Lkawa/ReplDocument;->endMark:I

    if-ne v6, v7, :cond_0

    .line 177
    move-object v6, v0

    iget-object v6, v6, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    const/4 v7, -0x1

    iput v7, v6, Lkawa/ReplDocument;->endMark:I

    .line 178
    :cond_0
    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget v7, v7, Lkawa/ReplDocument;->outputMark:I

    if-ne v6, v7, :cond_1

    .line 179
    move-object v6, v0

    iget-object v6, v6, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lkawa/ReplDocument;->outputMark:I

    .line 180
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v6, v6, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    if-eqz v6, :cond_2

    .line 181
    move-object v6, v0

    iget-object v6, v6, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v6, v6, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v4, v7

    monitor-enter v6

    .line 182
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v6, v6, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    move-object v7, v2

    move v8, v1

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    move-result-object v6

    .line 183
    move-object v6, v0

    iget-object v6, v6, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v6, v6, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 184
    move-object v6, v4

    monitor-exit v6

    .line 187
    .end local v2    # "b":Lgnu/lists/CharBuffer;
    .end local v3    # "lineAfter":I
    :cond_2
    return-void

    .line 184
    .restart local v2    # "b":Lgnu/lists/CharBuffer;
    .restart local v3    # "lineAfter":I
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method
