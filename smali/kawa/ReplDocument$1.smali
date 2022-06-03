.class Lkawa/ReplDocument$1;
.super Lgnu/text/QueueReader;
.source "ReplDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplDocument;-><init>(Lgnu/kawa/swingviews/SwingContent;Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
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
    .line 75
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/ReplDocument$1;->this$0:Lkawa/ReplDocument;

    move-object v2, v0

    invoke-direct {v2}, Lgnu/text/QueueReader;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAvailable()V
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument$1;
    move-object v1, v0

    iget-object v1, v1, Lkawa/ReplDocument$1;->this$0:Lkawa/ReplDocument;

    invoke-virtual {v1}, Lkawa/ReplDocument;->checkingPendingInput()V

    return-void
.end method
