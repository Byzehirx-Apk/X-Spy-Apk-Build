.class public Lgnu/mapping/Setter;
.super Lgnu/mapping/ProcedureN;
.source "Setter.java"


# instance fields
.field protected getter:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 7

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Setter;
    move-object v1, p1

    .local v1, "getter":Lgnu/mapping/Procedure;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 11
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/Setter;->getter:Lgnu/mapping/Procedure;

    .line 12
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 13
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 14
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(setter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Setter;->setName(Ljava/lang/String;)V

    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Setter;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/Setter;->getter:Lgnu/mapping/Procedure;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->setN([Ljava/lang/Object;)V

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Setter;
    return-object v0
.end method

.method public numArgs()I
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Setter;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/Setter;->getter:Lgnu/mapping/Procedure;

    invoke-virtual {v2}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v2

    move v1, v2

    .line 20
    .local v1, "get_args":I
    move v2, v1

    if-gez v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 21
    .end local v0    # "this":Lgnu/mapping/Setter;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/mapping/Setter;
    :cond_0
    move v2, v1

    const/16 v3, 0x1001

    add-int/lit16 v2, v2, 0x1001

    move v0, v2

    goto :goto_0
.end method
