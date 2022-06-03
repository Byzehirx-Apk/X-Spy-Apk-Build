.class Lkawa/ReplDocument$2$1;
.super Ljava/lang/Object;
.source "ReplDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplDocument$2;->apply0()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lkawa/ReplDocument$2;


# direct methods
.method constructor <init>(Lkawa/ReplDocument$2;)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument$2$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/ReplDocument$2$1;->this$1:Lkawa/ReplDocument$2;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument$2$1;
    move-object v1, v0

    iget-object v1, v1, Lkawa/ReplDocument$2$1;->this$1:Lkawa/ReplDocument$2;

    iget-object v1, v1, Lkawa/ReplDocument$2;->this$0:Lkawa/ReplDocument;

    invoke-virtual {v1}, Lkawa/ReplDocument;->fireDocumentClosed()V

    return-void
.end method
