.class public Lkawa/lang/Continuation;
.super Lgnu/mapping/MethodProc;
.source "Continuation.java"


# static fields
.field static counter:I


# instance fields
.field id:I

.field public invoked:Z


# direct methods
.method public constructor <init>(Lgnu/mapping/CallContext;)V
    .locals 3

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Continuation;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/MethodProc;-><init>()V

    .line 19
    return-void
.end method

.method public static handleException(Ljava/lang/Throwable;Lkawa/lang/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, p1

    .local v1, "cont":Lkawa/lang/Continuation;
    move-object v3, v0

    instance-of v3, v3, Lkawa/lang/CalledContinuation;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lkawa/lang/CalledContinuation;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "cex":Lkawa/lang/CalledContinuation;
    iget-object v3, v3, Lkawa/lang/CalledContinuation;->continuation:Lkawa/lang/Continuation;

    move-object v4, v1

    if-eq v3, v4, :cond_1

    .line 50
    .end local v2    # "cex":Lkawa/lang/CalledContinuation;
    :cond_0
    move-object v3, v0

    throw v3

    .line 51
    .restart local v2    # "cex":Lkawa/lang/CalledContinuation;
    :cond_1
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lkawa/lang/Continuation;->invoked:Z

    .line 52
    move-object v3, v2

    iget-object v3, v3, Lkawa/lang/CalledContinuation;->values:[Ljava/lang/Object;

    invoke-static {v3}, Lgnu/mapping/Values;->make([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "ex":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static handleException$X(Ljava/lang/Throwable;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, p1

    .local v1, "cont":Lkawa/lang/Continuation;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v0

    instance-of v7, v7, Lkawa/lang/CalledContinuation;

    if-eqz v7, :cond_0

    move-object v7, v0

    check-cast v7, Lkawa/lang/CalledContinuation;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    .local v3, "cex":Lkawa/lang/CalledContinuation;
    iget-object v7, v7, Lkawa/lang/CalledContinuation;->continuation:Lkawa/lang/Continuation;

    move-object v8, v1

    if-eq v7, v8, :cond_1

    .line 36
    .end local v3    # "cex":Lkawa/lang/CalledContinuation;
    :cond_0
    move-object v7, v0

    throw v7

    .line 37
    .restart local v3    # "cex":Lkawa/lang/CalledContinuation;
    :cond_1
    move-object v7, v1

    const/4 v8, 0x1

    iput-boolean v8, v7, Lkawa/lang/Continuation;->invoked:Z

    .line 38
    move-object v7, v3

    iget-object v7, v7, Lkawa/lang/CalledContinuation;->values:[Ljava/lang/Object;

    move-object v4, v7

    .line 39
    .local v4, "values":[Ljava/lang/Object;
    move-object v7, v4

    array-length v7, v7

    move v5, v7

    .line 40
    .local v5, "nvalues":I
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 41
    move-object v7, v2

    iget-object v7, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    invoke-interface {v7, v8}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 40
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 8

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Continuation;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v0

    iget-boolean v2, v2, Lkawa/lang/Continuation;->invoked:Z

    if-eqz v2, :cond_0

    .line 24
    new-instance v2, Lkawa/lang/GenericError;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "implementation restriction: continuation can only be used once"

    invoke-direct {v3, v4}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 26
    :cond_0
    new-instance v2, Lkawa/lang/CalledContinuation;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lkawa/lang/CalledContinuation;-><init>([Ljava/lang/Object;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V

    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Continuation;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#<continuation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lkawa/lang/Continuation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lkawa/lang/Continuation;->invoked:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, " (invoked)>"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/Continuation;
    return-object v0

    .restart local v0    # "this":Lkawa/lang/Continuation;
    :cond_0
    const-string/jumbo v2, ">"

    goto :goto_0
.end method
