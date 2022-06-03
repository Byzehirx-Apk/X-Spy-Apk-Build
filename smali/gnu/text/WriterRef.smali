.class Lgnu/text/WriterRef;
.super Ljava/lang/ref/WeakReference;
.source "WriterManager.java"


# instance fields
.field next:Lgnu/text/WriterRef;

.field prev:Lgnu/text/WriterRef;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/text/WriterRef;
    move-object v1, p1

    .local v1, "wr":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
