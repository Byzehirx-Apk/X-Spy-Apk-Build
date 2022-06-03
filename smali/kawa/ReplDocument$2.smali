.class Lkawa/ReplDocument$2;
.super Lkawa/repl;
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

.field final synthetic val$shared:Z


# direct methods
.method constructor <init>(Lkawa/ReplDocument;Lgnu/expr/Language;Z)V
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument$2;
    move-object v1, p1

    move-object v2, p2

    .local v2, "x0":Lgnu/expr/Language;
    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkawa/ReplDocument$2;->this$0:Lkawa/ReplDocument;

    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lkawa/ReplDocument$2;->val$shared:Z

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lkawa/repl;-><init>(Lgnu/expr/Language;)V

    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument$2;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    move-object v1, v2

    .line 87
    .local v1, "env":Lgnu/mapping/Environment;
    move-object v2, v0

    iget-boolean v2, v2, Lkawa/ReplDocument$2;->val$shared:Z

    if-eqz v2, :cond_0

    .line 88
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/Environment;->setIndirectDefines()V

    .line 89
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lkawa/ReplDocument$2;->this$0:Lkawa/ReplDocument;

    move-object v3, v1

    iput-object v3, v2, Lkawa/ReplDocument;->environment:Lgnu/mapping/Environment;

    .line 90
    move-object v2, v0

    iget-object v2, v2, Lkawa/ReplDocument$2;->language:Lgnu/expr/Language;

    move-object v3, v1

    invoke-static {v2, v3}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    move-result v2

    .line 91
    new-instance v2, Lkawa/ReplDocument$2$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lkawa/ReplDocument$2$1;-><init>(Lkawa/ReplDocument$2;)V

    invoke-static {v2}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 94
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    .end local v0    # "this":Lkawa/ReplDocument$2;
    return-object v0
.end method
