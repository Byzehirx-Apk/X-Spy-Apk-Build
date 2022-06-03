.class public Lkawa/lang/CalledContinuation;
.super Ljava/lang/RuntimeException;
.source "CalledContinuation.java"


# instance fields
.field public continuation:Lkawa/lang/Continuation;

.field public ctx:Lgnu/mapping/CallContext;

.field public values:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V
    .locals 6

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lkawa/lang/CalledContinuation;
    move-object v1, p1

    .local v1, "values":[Ljava/lang/Object;
    move-object v2, p2

    .local v2, "continuation":Lkawa/lang/Continuation;
    move-object v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v0

    const-string/jumbo v5, "call/cc called"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkawa/lang/CalledContinuation;->values:[Ljava/lang/Object;

    .line 14
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkawa/lang/CalledContinuation;->continuation:Lkawa/lang/Continuation;

    .line 15
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lkawa/lang/CalledContinuation;->ctx:Lgnu/mapping/CallContext;

    .line 16
    return-void
.end method
