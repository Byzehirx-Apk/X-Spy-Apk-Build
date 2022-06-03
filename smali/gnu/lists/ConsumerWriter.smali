.class public Lgnu/lists/ConsumerWriter;
.super Ljava/io/Writer;
.source "ConsumerWriter.java"


# instance fields
.field protected out:Lgnu/lists/Consumer;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ConsumerWriter;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/io/Writer;-><init>()V

    .line 15
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/ConsumerWriter;->out:Lgnu/lists/Consumer;

    .line 16
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ConsumerWriter;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/ConsumerWriter;->flush()V

    .line 29
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ConsumerWriter;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/ConsumerWriter;->close()V

    .line 34
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public write([CII)V
    .locals 8

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ConsumerWriter;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/ConsumerWriter;->out:Lgnu/lists/Consumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/Consumer;->write([CII)V

    .line 21
    return-void
.end method
