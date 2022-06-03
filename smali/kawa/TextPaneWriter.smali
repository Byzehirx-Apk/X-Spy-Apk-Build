.class Lkawa/TextPaneWriter;
.super Ljava/io/Writer;
.source "ReplPaneOutPort.java"


# instance fields
.field document:Lkawa/ReplDocument;

.field str:Ljava/lang/String;

.field style:Ljavax/swing/text/AttributeSet;


# direct methods
.method public constructor <init>(Lkawa/ReplDocument;Ljavax/swing/text/AttributeSet;)V
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lkawa/TextPaneWriter;
    move-object v1, p1

    .local v1, "document":Lkawa/ReplDocument;
    move-object v2, p2

    .local v2, "style":Ljavax/swing/text/AttributeSet;
    move-object v3, v0

    invoke-direct {v3}, Ljava/io/Writer;-><init>()V

    .line 78
    move-object v3, v0

    const-string/jumbo v4, ""

    iput-object v4, v3, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    .line 82
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/TextPaneWriter;->document:Lkawa/ReplDocument;

    .line 83
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/TextPaneWriter;->style:Ljavax/swing/text/AttributeSet;

    .line 84
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lkawa/TextPaneWriter;
    move-object v1, v0

    invoke-virtual {v1}, Lkawa/TextPaneWriter;->flush()V

    .line 118
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lkawa/TextPaneWriter;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    move-object v1, v2

    .line 108
    .local v1, "s":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    .line 111
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkawa/TextPaneWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    monitor-exit v4

    return-void

    .line 107
    .end local v1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lkawa/TextPaneWriter;
    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lkawa/TextPaneWriter;
    move v1, p1

    .local v1, "x":I
    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    .line 89
    move v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 90
    move-object v2, v0

    invoke-virtual {v2}, Lkawa/TextPaneWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit v5

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lkawa/TextPaneWriter;
    throw v0
.end method

.method public write(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lkawa/TextPaneWriter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lkawa/TextPaneWriter;->document:Lkawa/ReplDocument;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lkawa/TextPaneWriter;->style:Ljavax/swing/text/AttributeSet;

    invoke-virtual {v2, v3, v4}, Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 96
    return-void
.end method

.method public declared-synchronized write([CII)V
    .locals 12

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lkawa/TextPaneWriter;
    move-object v1, p1

    .local v1, "data":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v10, p0

    monitor-enter v10

    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lkawa/TextPaneWriter;->flush()V

    .line 101
    move v4, v3

    if-eqz v4, :cond_0

    .line 102
    move-object v4, v0

    new-instance v5, Ljava/lang/String;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v5}, Lkawa/TextPaneWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit v10

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lkawa/TextPaneWriter;
    throw v0
.end method
