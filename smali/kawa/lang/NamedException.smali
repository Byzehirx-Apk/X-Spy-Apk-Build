.class public Lkawa/lang/NamedException;
.super Ljava/lang/RuntimeException;
.source "NamedException.java"


# instance fields
.field args:[Ljava/lang/Object;

.field name:Lgnu/mapping/Symbol;


# direct methods
.method public constructor <init>(Lgnu/mapping/Symbol;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lkawa/lang/NamedException;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 17
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/lang/NamedException;->name:Lgnu/mapping/Symbol;

    .line 18
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public applyHandler(Ljava/lang/Object;Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lkawa/lang/NamedException;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "handler":Lgnu/mapping/Procedure;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lkawa/lang/NamedException;->checkMatch(Ljava/lang/Object;)V

    .line 30
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/lang/NamedException;
    return-object v0
.end method

.method public checkMatch(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lkawa/lang/NamedException;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/NamedException;->name:Lgnu/mapping/Symbol;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    .line 24
    move-object v2, v0

    throw v2

    .line 25
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lkawa/lang/NamedException;
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    .line 36
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v4, v1

    const-string/jumbo v5, "#<ERROR"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 37
    const/4 v4, 0x0

    move v2, v4

    .line 38
    .local v2, "i":I
    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    array-length v4, v4

    move v3, v4

    .line 40
    .local v3, "len":I
    move v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string/jumbo v5, "misc-error"

    if-ne v4, v5, :cond_0

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    :cond_0
    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    .line 44
    move-object v4, v1

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 45
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 48
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lkawa/lang/NamedException;
    return-object v0
.end method
